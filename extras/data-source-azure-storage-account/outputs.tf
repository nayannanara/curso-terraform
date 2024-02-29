output "sas_token" {
  value = data.azurerm_storage_account_blob_container_sas.sas_token.sas
  sensitive = true
}

output "container_url" {
  value = azurerm_storage_container.container.id
}
