
resource "azurerm_resource_group" "rg-name" {
  name     = var.rg_name
  location = var.location
}
