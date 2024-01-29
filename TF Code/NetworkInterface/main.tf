resource "azurerm_network_interface" "nic" {
  for_each            = var.nics
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name



dynamic "ip_configuration" {
  for_each = var.card
  content {
    name                          = ip_configuration.value.name
    subnet_id                     = data.azurerm_subnet.subnetdata[each.key].id
    private_ip_address_allocation = ip_configuration.value.private_ip_address_allocation
  }
  
}  
  }
  

  
  
 
