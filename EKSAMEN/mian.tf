
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.13.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# Ressursgruppe
resource "azurerm_resource_group" "rg_name_eksamen" {
  name     = var.resource_group_name
  location = var.location
}

# Virtuelt nettverk
resource "azurerm_virtual_network" "vnet_eksamen" {
  name                = var.vnet_name
  location            = azurerm_resource_group.rg_name_eksamen.location
  resource_group_name = azurerm_resource_group.rg_name_eksamen.name
  address_space       = var.vnet_address_space
}

# Subnett
resource "azurerm_subnet" "subnet_eksamen" {
  name                 = "default"
  resource_group_name  = azurerm_resource_group.rg_name_eksamen.name
  virtual_network_name = azurerm_virtual_network.vnet_eksamen.name
  address_prefixes     = var.subnet_address_prefixes
}

# Storage Account for Terraform backend
resource "azurerm_storage_account" "backend_storage" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg_name_eksamen.name
  location                 = azurerm_resource_group.rg_name_eksamen.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# Blob Container for Terraform state
resource "azurerm_storage_container" "tfstate_container" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.backend_storage.name
  container_access_type = "private"
}
