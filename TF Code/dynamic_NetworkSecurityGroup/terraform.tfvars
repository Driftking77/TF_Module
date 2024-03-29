nsg = {
  "nsg1" = {
    name                = "frontendvm-nsg"
    location            = "West Europe"
    resource_group_name = "test123"
  }
  "nsg2" = {
    name                = "frontendvm2-nsg"
    location            = "West Europe"
    resource_group_name = "test123"
  }
  "nsg3" = {
    name                = "backendvm-nsg"
    location            = "West Europe"
    resource_group_name = "test123"
  }
}

mehul = {
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
  sg2 = {
    name = "second"
    priority = "102"
    port = "443"
    access = "Allow"
  }
}

