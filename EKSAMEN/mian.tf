
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


resource "azurerm_resource_group" "rg_name_eksamen" {
  name     = var.resource_group_name
  location = var.location
}


resource "azurerm_virtual_network" "vnet_eksamen" {
  name                = var.vnet_name
  location            = azurerm_resource_group.rg_name_eksamen.location
  resource_group_name = azurerm_resource_group.rg_name_eksamen.name
  address_space       = var.vnet_address_space
}


resource "azurerm_subnet" "subnet_eksamen" {
  name                 = "default"
  resource_group_name  = azurerm_resource_group.rg_name_eksamen.name
  virtual_network_name = azurerm_virtual_network.vnet_eksamen.name
  address_prefixes     = var.subnet_address_prefixes
}
