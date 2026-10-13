variable "resource_group_name_prefix" {
  default     = "rg"
  description = "Prefix of the resource group name, combined with a random ID to keep it unique."
}

variable "resource_group_location" {
  default     = "eastus"
  description = "Location of the resource group."
}

variable "repo_url" {
  default     = "https://github.com/cjbdev/functions-quickstart"
  description = "Public Git repo containing the function code."
}
