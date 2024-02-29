output "storage_accounts_id" {
  description = "ID da storage account criada na azure"
  value       = [for sa in azurerm_storage_account.storage_account : sa.id]
}


output "sa_primary_access_keys" {
  description = "ID da storage account criada na azure"
  value       = {for key, sa in azurerm_storage_account.storage_account : key => sa.primary_access_key}
  sensitive = true
}
