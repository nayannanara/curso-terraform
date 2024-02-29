output "storage_account_id" {
  description = "ID da storage account criada na azure"
  value       = azurerm_storage_account.storage_account.id
}

output "sa_primary_access_key" {
  description = "primary access key da stoage account criada na azure"
  value       = azurerm_storage_account.storage_account.primary_access_key
  sensitive   = true
}
