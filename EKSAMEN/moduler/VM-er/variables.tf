

variable "vm_name" {
  description = "Navn på den virtuelle maskinen"
  type        = string
}

variable "resource_group_name" {
  description = "Navnet på ressursgruppen"
  type        = string
}

variable "location" {
  description = "Lokasjon for den virtuelle maskinen"
  type        = string
}

variable "vm_size" {
  description = "Størrelsen på den virtuelle maskinen"
  type        = string
}

variable "admin_username" {
  description = "Admin-brukernavnet for den virtuelle maskinen"
  type        = string
}

variable "admin_password" {
  description = "Admin-passordet for den virtuelle maskinen"
  type        = string
  sensitive   = true
}

variable "subnet_id" {
  description = "ID til subnettet som den virtuelle maskinen"
  type        = string
}

variable "network_interface_id" {
  description = "Lister over interfacene"
  type        = string

}
