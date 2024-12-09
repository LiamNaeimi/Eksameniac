variable "resource_group_name" {
  description = "Navnet på ressursgruppen"
  type        = string
}

variable "location" {
  description = "Plasseringen for ressursene"
  type        = string
}

variable "vnet_name" {
  description = "Navnet på det virtuelle nettverket"
  type        = string
}

variable "vnet_address_space" {
  description = "Adresseområde for det virtuelle nettverket"
  type        = list(string)
}

variable "subnet_address_prefixes" {
  description = "Adresseområder for subnettet"
  type        = list(string)
}

variable "storage_account_name" {
  description = "Navnet på Storage Account for Terraform backend"
  type        = string
}

variable "container_name" {
  description = "Navnet på blob-containeren for Terraform backend"
  type        = string
}
