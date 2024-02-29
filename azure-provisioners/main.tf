terraform {
  required_version = ">=1.7.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.93.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-terraform-statee"
    storage_account_name = "nayterraformstatee"
    container_name       = "remote-statee"
    key                  = "azure-vm-provisioners/terraform.tfstate"
  }

}

provider "azurerm" {
  features {}
}

data "terraform_remote_state" "vnet" {
  backend = "azurerm"
  config = {
    resource_group_name  = "rg-terraform-statee"
    storage_account_name = "nayterraformstatee"
    container_name       = "remote-statee"
    key                  = "azure-vnet/terraform.tfstate"
  }
}
