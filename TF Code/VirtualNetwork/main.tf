resource "azurerm_virtual_network" "subnet" {
  for_each = var.vnets
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space

dynamic "subnet" {
  for_each = var.subnets ==null?{}:var.subnets
  content {
    name = subnet.value.name
    address_prefix = subnet.value.address_prefix
    
  }
  
}
}


