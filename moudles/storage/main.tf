resource "azurerm_storage_account" "st" {
  for_each = var.sts
  name                     = each.value.name
  resource_group_name      = each.value.rgname    
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}