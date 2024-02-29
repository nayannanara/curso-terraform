terraform {
  required_version = ">=1.7.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.93.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "nayterraformstate"
    container_name       = "remote-state"
    key                  = "depends-on/terraform.tfstate"
  }

}

provider "azurerm" {
  features {}
}

module "network" {
  depends_on = [azurerm_resource_group.resource_group]
  source  = "Azure/network/azurerm"
  version = "5.2.0"

  resource_group_name = azurerm_resource_group.resource_group.name
  use_for_each        = true
  subnet_names        = ["subnet-${var.enviroment}"]
  tags                = local.common_tags
  vnet_name           = "vnet-${var.enviroment}"
}
