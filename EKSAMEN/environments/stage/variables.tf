

variable "location" {
  description = "Lokasjon"
  type        = string
  default     = "West Europe"
}

variable "resource_group_name" {
  description = "Navnet til ressursgruppen"
  type        = string
  default     = "rg-stage-eksamen"
}

variable "vnet_name" {
  description = "navn til virtuelele nettverk"
  type        = string
  default     = "stage-vnet"
}

variable "vnet_address_space" {
  description = "Ip-addresse virtuelle nettverk"
  type        = string
  default     = "10.1.0.0/16"
}

variable "vm_name" {
  description = "Navnet til vitueller nettverk"
  type        = string
  default     = "stage-vm"
}

variable "vm_size" {
  description = "Tørrelse på vm"
  type        = string
  default     = "Standard_DS2_v2"
}

variable "admin_username" {
  description = "Admin brukernvan stage"
  type        = string
  default     = "stageadminbruker"
}

variable "admin_password" {
  description = "Passordet til admin stage"
  type        = string
  sensitive   = true
}
