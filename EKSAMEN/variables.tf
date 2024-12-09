
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
  type        = list(string) # Definerer adresseområdet som en liste av strenger
}

variable "subnet_address_prefixes" {
  description = "Adresseområder for subnettet"
  type        = list(string) # Definerer adresseområder for subnettet som en liste av strenger
}
