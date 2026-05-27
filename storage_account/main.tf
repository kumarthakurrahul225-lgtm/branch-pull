resource "azurerm_storage_account" "Nttstg1"{
for_each = var.stg1
name = each.value.name
resource_group_name = each.value.rg-name
location = each.value.location
account_tier = each.value.tier
account_replication_type = each.value.type
}
