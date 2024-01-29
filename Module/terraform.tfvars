rgs = {
  "rg1" = {
    name     = "devopsinsiders-rg1"
    location = "West Europe"
  }
}
vnets = {
  vnet1 = {
    name                = "vnet-devopsinsider1"
    location            = "West Europe"
    resource_group_name = "devopsinsiders-rg1"
    address_space       = ["10.0.0.0/16"]
  }
}
subnets = {
  sb1 = {
    name           = "frontend-subnet"
    address_prefix = "10.0.1.0/24"
  },
  sb2 = {
    name           = "backend-subnet"
    address_prefix = "10.0.2.0/24"
  },
  sb3 = {
    name           = "AzureBastionSubnet"
    address_prefix = "10.0.3.0/26"
  }
}

nsg = {
  nsg1 = {
    name                = "frontendvm-nsg"
    location            = "West Europe"
    resource_group_name = "devopsinsiders-rg1"
  }
  nsg2 = {
    name                = "frontendvm2-nsg"
    location            = "West Europe"
    resource_group_name = "devopsinsiders-rg1"
  }
  nsg3 = {
    name                = "backendvm-nsg"
    location            = "West Europe"
    resource_group_name = "devopsinsiders-rg1"
  }
}
rule ={
    sg1 = {
    name = "first"
    priority = "100"
    port = "22"
    access = "Allow"
  },
  sg2 = {
    name = "second"
    priority = "101"
    port = "80"
    access = "Allow"
  },
  sg3 = {
    name = "third"
    priority = "102"
    port = "443"
    access = "Allow"
  }
}
key ={
  key1={
    name ="keyvault71210jan"
    location ="West Europe"
  }
}


# nics = {
#   nic1 = {
#     name                = "frontend"
#     location            = "West Europe"
#     resource_group_name = "devopsinsiders-rg1"
#   },
#   nic2 = {
#     name                = "backend"
#     location            = "West Europe"
#     resource_group_name = "devopsinsiders-rg1"
#   }
# }

# subnetdata = {
#   subnetdta1 = {
#     name                 = "frontend-subnet"
#     virtual_network_name = "vnet-devopsinsider1"
#     resource_group_name  = "devopsinsiders-rg1"
#   },
#   subnetdta2 = {
#     name                 = "backend-subnet"
#     virtual_network_name = "vnet-devopsinsider1"
#     resource_group_name  = "devopsinsiders-rg1"
#   }
# }

# card = {
#   card1 = {
#     name                          = "internal1"
#     private_ip_address_allocation = "Dynamic"
#   },
#   card2 = {
#     name                          = "internal2"
#     private_ip_address_allocation = "Dynamic"
#   }
# }





# association_map = {
#   "a1" = {
#     network_interface_id      = "/subscriptions/bf616c2a-03fb-4ee3-b117-12a41f4f3a31/resourceGroups/devopsinsiders-rg1/providers/Microsoft.Network/networkInterfaces/frontendvm-nic"
#     network_security_group_id = "/subscriptions/bf616c2a-03fb-4ee3-b117-12a41f4f3a31/resourceGroups/devopsinsiders-rg1/providers/Microsoft.Network/networkSecurityGroups/frontendvm-nsg"
#   }
#   "a2" = {
#     network_interface_id      = "/subscriptions/bf616c2a-03fb-4ee3-b117-12a41f4f3a31/resourceGroups/devopsinsiders-rg1/providers/Microsoft.Network/networkInterfaces/frontendvm2-nic"
#     network_security_group_id = "/subscriptions/bf616c2a-03fb-4ee3-b117-12a41f4f3a31/resourceGroups/devopsinsiders-rg1/providers/Microsoft.Network/networkSecurityGroups/frontendvm2-nsg"
#   }
#   "a3" = {
#     network_interface_id      = "/subscriptions/bf616c2a-03fb-4ee3-b117-12a41f4f3a31/resourceGroups/devopsinsiders-rg1/providers/Microsoft.Network/networkInterfaces/backendvm-nic"
#     network_security_group_id = "/subscriptions/bf616c2a-03fb-4ee3-b117-12a41f4f3a31/resourceGroups/devopsinsiders-rg1/providers/Microsoft.Network/networkSecurityGroups/backendvm-nsg"
#   }
# }
# pip = {
#   "pip1" = {
#     name                = "pip1"
#     resource_group_name = "devopsinsiders-rg1"
#     location            = "West Europe"
#     allocation_method   = "Static"
#   }
#   # "pip2" = {
#   #   name                = "pip2"
#   #   resource_group_name = "devopsinsiders-rg1"
#   #   location            = "West Europe"
#   #   allocation_method   = "Static"
#   # }
# }
# servers = {
#   "srv1" = {
#     name                         = "devopsinssrv1"
#     resource_group_name          = "devopsinsiders-rg1"
#     location                     = "West Europe"
#     version                      = "12.0"
#     administrator_login          = "devopsadmin"
#     administrator_login_password = "P@ssw01rd@123"
#   }
# }
# dbs = {
#   "db1" = {
#     name                = "todoappdb"
#     resource_group_name = "devopsinsiders-rg1"
#     location            = "West Europe"
#     server_name         = "devopsinssrv1"
#   }
# }
# vms = {
#   "vm1" = {
#     name                  = "frontendvm"
#     resource_group_name   = "devopsinsiders-rg1"
#     location              = "West Europe"
#     size                  = "Standard_DS1_v2"
#     admin_username        = "devopsadmin"
#     admin_password        = "P@ssw01rd@123"
#     network_interface_ids = ["/subscriptions/bf616c2a-03fb-4ee3-b117-12a41f4f3a31/resourceGroups/devopsinsiders-rg1/providers/Microsoft.Network/networkInterfaces/frontendvm-nic"]
#     source_image_reference = {
#       publisher = "Canonical"
#       offer     = "0001-com-ubuntu-server-focal"
#       sku       = "20_04-lts"
#       version   = "latest"
#     }
#   }
#   "vm2" = {
#     name                  = "backendvm"
#     resource_group_name   = "devopsinsiders-rg1"
#     location              = "West Europe"
#     size                  = "Standard_DS1_v2"
#     admin_username        = "devopsadmin"
#     admin_password        = "P@ssw01rd@123"
#     network_interface_ids = ["/subscriptions/bf616c2a-03fb-4ee3-b117-12a41f4f3a31/resourceGroups/devopsinsiders-rg1/providers/Microsoft.Network/networkInterfaces/backendvm-nic"]
#     source_image_reference = {
#       publisher = "Canonical"
#       offer     = "0001-com-ubuntu-server-focal"
#       sku       = "20_04-lts"
#       version   = "latest"
#     }
#   }
#   "vm3" = {
#     name                  = "frontendvm2"
#     resource_group_name   = "devopsinsiders-rg1"
#     location              = "West Europe"
#     size                  = "Standard_DS1_v2"
#     admin_username        = "devopsadmin"
#     admin_password        = "P@ssw01rd@123"
#     network_interface_ids = ["/subscriptions/bf616c2a-03fb-4ee3-b117-12a41f4f3a31/resourceGroups/devopsinsiders-rg1/providers/Microsoft.Network/networkInterfaces/frontendvm2-nic"]
#     source_image_reference = {
#       publisher = "Canonical"
#       offer     = "0001-com-ubuntu-server-focal"
#       sku       = "20_04-lts"
#       version   = "latest"
#     }
#   }
# }
