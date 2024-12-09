
output "network_interface_id" {
  description = "ID for network interface"
  value       = azurerm_network_interface.vnet_nic.id
}
