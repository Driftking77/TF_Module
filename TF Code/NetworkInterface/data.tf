data "azurerm_subnet" "subnetdata" {
    for_each = var.subnetdata
  name                 = each.value.name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}