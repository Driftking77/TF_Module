vms = {
  vms1 = {
    name                            = "vm1"
    resource_group_name             = "devopsinsiders-rg1"
    location                        = "West Europe "
    size                            = "Standard_F2"
    disable_password_authentication = false

    network_interface_ids = "/subscriptions/72ee3a3e-b0e7-4ff8-bc38-e52666770035/resourceGroups/devopsinsiders-rg1/providers/Microsoft.Network/networkInterfaces/vmnic"



  }
}
