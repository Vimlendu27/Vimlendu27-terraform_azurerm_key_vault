data "azurerm_client_config" "current" {}
resource "azurerm_key_vault" "keyblock" {
  name                        = "vimlendukeyvault"
  location                    = "poland central"
  resource_group_name         = "vim-rg"
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  purge_protection_enabled    = false

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Get", "Create" , "Delete"
    ]

    secret_permissions = [
      "Get", "Set" , "List"
    ]

    storage_permissions = [
      "Get",
    ]
  }
}
resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}
resource "azurerm_key_vault_secret" "tf-secret" {
  name         = "tf-securet"
  value        = random_password.password.result
  key_vault_id = azurerm_key_vault.keyblock.id
}

resource "azurerm_key_vault_secret" "abcblock" {
  name         = "dhodhu"
  value        = "missionsucessfull"
  key_vault_id = azurerm_key_vault.keyblock.id
}