data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "keyvalut" {
    for_each = var.key
  name                        = each.value.name
  location                    = each.value.location
  resource_group_name         = data.azurerm_resource_group.example.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Get",
    ]

    secret_permissions = [
      "Get",
    ]

    storage_permissions = [
      "Get",
    ]
  }
}
resource "azurerm_key_vault_secret" "username" {
  name         = "username"
  value        = "admin01"
  key_vault_id = azurerm_key_vault.keyvalut.id
}
resource "azurerm_key_vault_secret" "password" {
  name         = "password"
  value        = "Admin@123456"
  key_vault_id = azurerm_key_vault.keyvalut.id
}