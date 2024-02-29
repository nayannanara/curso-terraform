resource "azurerm_resource_group" "resource_group" {
  name     = "rg-data-source"
  location = "West Europe"

  tags = local.common_tags
}

resource "azurerm_storage_account" "storage_account" {
  name                     = "naydatasource"
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = azurerm_resource_group.resource_group.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = local.common_tags
}

resource "azurerm_storage_container" "container" {
  name                 = "imagens"
  storage_account_name = azurerm_storage_account.storage_account.name
  container_access_type = "blob"
}

data "azurerm_storage_account_blob_container_sas" "sas_token" {
  connection_string = azurerm_storage_account.storage_account.primary_connection_string
  container_name    = azurerm_storage_container.container.name
  https_only        = true

  ip_address = "192.168.100.129"

  start  = "2024-02-28"
  expiry = "2024-04-28"

  permissions {
    read   = true
    add    = true
    create = true
    write  = true
    delete = true
    list   = true
  }
}
