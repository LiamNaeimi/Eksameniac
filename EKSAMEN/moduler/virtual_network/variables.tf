# moduler/virtual_network/variables.tf

variable "vnet_name" {
  description = "Navn på det virtuelle nettverket"
  type        = string
}

variable "location" {
  description = "Lokasjon for det virtuelle nettverket"
  type        = string
}

variable "resource_group_name" {
  description = "Navnet på ressursgruppen"
  type        = string
}

variable "vnet_address_space" {
  description = "Adresseområde for det virtuelle nettverket"
  type        = list(string)
}
