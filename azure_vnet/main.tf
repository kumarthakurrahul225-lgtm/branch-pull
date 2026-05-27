
resource "azurerm_virtual_network" "ntt-vnet" {
for_each = var.vnet
resource_group_name = each.value.rg-name
name = each.value.name
location = each.value.location
address_space = each.value.space

}
