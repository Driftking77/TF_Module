data "azurerm_key_vault" "keyvault" {
  name                = "lkey-voult-01"
  resource_group_name = "Key-RG"
}

data "azurerm_key_vault_secret" "username" {
  name         = "vmuser"
  key_vault_id = data.azurerm_key_vault.keyvault.id
}

data "azurerm_key_vault_secret" "password" {
  name         = "vmpasswd"
  key_vault_id = data.azurerm_key_vault.keyvault.id
}

# data "azurerm_network_interface" "niccard" {
#   name                = "frontendvm-nic"
#   resource_group_name = "devopsinsiders-rg1"
# }


//data.azurerm_key_vault_secret.username.value