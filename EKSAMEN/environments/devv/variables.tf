
variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "West Europe"
}
variable "resource_group_name" {
  description = "Navnet på ressurs gruppen"
  type        = string
  default     = "dev-resource-group"
}
variable "vnet_name" {
  description = "Navnet på virtuell nettverk"
  type        = string
  default     = "dev-vnet"
}
variable "vnet_address_space" {
  description = "Ip ddresse for netverket"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vm_name" {
  description = "Navnet på virtuell maskien"
  type        = string
  default     = "dev-vm"
}

variable "vm_size" {
  description = "Størrelse på virtuell amskin"
  type        = string
  default     = "Standard_DS1_v2"
}

variable "admin_username" {
  description = "Bruketnavnet til admin"
  type        = string
  default     = "devadminbruker"
}

variable "admin_password" {
  description = "Pasordet til admin"
  type        = string
  sensitive   = true
}
