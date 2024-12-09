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

module "resource_group" {
  source   = "../../moduler/resource_group"
  rg_name  = var.resource_group_name
  location = var.location
}

module "virtual_network" {
  source              = "../../moduler/virtual_network"
  name                = var.vnet_name
  resource_group_name = module.resource_group.name
  location            = var.location
  address_space       = var.vnet_address_space
}

module "vm" {
  source                = "../../moduler/VM-er"
  name                  = var.vm_name
  resource_group_name   = module.resource_group.name
  location              = var.location
  size                  = var.vm_size
  admin_username        = var.admin_username
  admin_password        = var.admin_password
  network_interface_ids = module.virtual_network.network_interface_id
}
