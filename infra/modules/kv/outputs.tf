output "kv_id" {
  value = azurerm_key_vault.kv.id
}
output "kv_uri" {
  value = azurerm_key_vault.kv.vault_uri
}
output "kv_name" {
  value = azurerm_key_vault.kv.name
}
output "kv_location" {
  value = azurerm_key_vault.kv.location
}
output "kv_sku" {
  value = azurerm_key_vault.kv.sku_name
}