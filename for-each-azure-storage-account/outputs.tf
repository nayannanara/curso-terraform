output "storage_account_europa_id" {
  description = "ID da storage account criada na azure"
  value       = azurerm_storage_account.storage_account["europa"].id
}

output "storage_account_eua_id" {
  description = "ID da storage account criada na azure"
  value       = azurerm_storage_account.storage_account["eua"].id
}

output "storage_account_asia_id" {
  description = "ID da storage account criada na azure"
  value       = azurerm_storage_account.storage_account["asia"].id
}

output "storage_account_brasil_id" {
  description = "ID da storage account criada na azure"
  value       = azurerm_storage_account.storage_account["brasil"].id
}

