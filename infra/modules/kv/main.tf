resource "azurerm_key_vault" "kv" {
  name                        = var.kv_name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  tenant_id                   = var.tenant_id
  sku_name                    = var.sku_name
  soft_delete_retention_days = var.soft_delete_retention_days
  tags                        = var.tags
  purge_protection_enabled    = true
  enable_rbac_authorization = true  
  
  access_policy {
    
    tenant_id = var.tenant_id
    object_id = var.admin_object_id

    secret_permissions = [
      "get", "list", "set", "delete"
    ]
    key_permissions = [
      "get", "list", "create", "delete"
    ]
    certificate_permissions = [
      "get", "list", "create", "delete"
    ]
  }
}
