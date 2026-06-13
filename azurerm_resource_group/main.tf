resource "azurerm_resource_group" "this" {
  for_each = var.rgdetails
  name     = each.value.name
  location = each.value.location
}