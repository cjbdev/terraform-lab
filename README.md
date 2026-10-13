# Lab: Deploy an Azure Function App with Terraform

In this lab you use Terraform in Azure Cloud Shell to deploy a working Azure Function App. The function code is pulled automatically from https://github.com/cjbdev/functions-quickstart

## To do

1. Open Azure Cloud Shell (Cloud shell icon on portal.azure.com). Check terraform is available and up to date 

2. Clone this repo:

   ```bash
   git clone https://github.com/cjbdev/terraform-lab
   cd terraform-lab
   ```

3. Create and apply a Terraform execution plan:

   ```bash
   terraform init
   terraform plan -out main.tfplan
   terraform apply main.tfplan
   ```

4. Test the function (the first call can take a couple of minutes while the code is deployed):

   ```bash
   curl "$(terraform output -raw http_trigger_url)?name=Student"
   # Hello, Student. This HTTP triggered function executed successfully.
   ```

   Trace logs: Azure portal → `functions-appinsights-*` Application Insights resource → Logs → `traces` table.

5. Clean up

   ```bash
   terraform plan -destroy -out main.destroy.tfplan
   terraform apply main.destroy.tfplan
   ```
