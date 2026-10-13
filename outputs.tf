output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "function_app_name" {
  value = azurerm_linux_function_app.func.name
}

output "http_trigger_url" {
  value = "https://${azurerm_linux_function_app.func.default_hostname}/api/HttpExample"
}
