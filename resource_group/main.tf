
resource "azurerm_resource_group" "nttdata" {
for_each = var.nttrg1
name = each.key
location = each.value
}
