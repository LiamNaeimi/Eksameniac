

variable "location" {
  description = "Lokasjon for ressursen"
  type        = string
  default     = "West Europe"
}

variable "resource_group_name" {
  description = "Navnet til ressursgruppen"
  type        = string
  default     = "rg-prod-eksamen"
}

variable "vnet_name" {
  description = "Nvanet til Virtuelle nettverk"
  type        = string
  default     = "prod-vnet"
}

variable "vnet_address_space" {
  description = "IP-Adresse for nettverket"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vm_name" {
  description = "Navnet på virtuelle maskinen"
  type        = string
  default     = "prod-vm"
}

variable "vm_size" {
  description = "Størrlese på VM-et"
  type        = string
  default     = "Standard_DS2_v2"
}

variable "admin_username" {
  description = "Brukernvan for admin i prod-miljø"
  type        = string
  default     = "prodadminbruker"
}

variable "admin_password" {
  description = "Passordet til admin"
  type        = string
  sensitive   = true
}
