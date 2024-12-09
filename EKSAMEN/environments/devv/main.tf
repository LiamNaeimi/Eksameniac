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

# Resource Group-modul
module "resource_group" {
  source   = "../../moduler/resource_group"
  rg_name  = var.resource_group_name
  location = var.location
}

module "virtual_network" {
  source              = "../../moduler/virtual_network"
  vnet_name           = var.vnet_name
  resource_group_name = module.resource_group.name
  location            = var.location
  vnet_address_space  = var.vnet_address_space
}

module "vm" {
  source               = "../../moduler/VM-er"
  vm_name              = var.vm_name
  resource_group_name  = module.resource_group.name
  location             = var.location
  vm_size              = var.vm_size
  admin_username       = var.admin_username
  admin_password       = var.admin_password
  subnet_id            = module.virtual_network.subnet_id               # Referer til subnet_id fra virtual_network-modulen
  network_interface_id = azurerm_network_interface.netverk_interface.id # Send nettverksgrensesnitt-ID som en enkel string
}
