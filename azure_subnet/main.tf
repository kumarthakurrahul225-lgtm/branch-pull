resource "azurerm_subnet" "nttsub1" {
for_each = var.sub
name = each.value.name
resource_group_name = each.value.rg-name
virtual_network_name = each.value.vnet
address_prefixes = each.value.prefixes
}