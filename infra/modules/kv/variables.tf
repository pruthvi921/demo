variable "kv_name" {
  description = "The name of the Key Vault."
  type        = string  
}
variable "location" {
  description = "The Azure region where the Key Vault will be created."
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group where the Key Vault will be created."
  type        = string
}
variable "tags" {
  description = "Tags to apply to the Key Vault."
  type        = map(string)
  default     = {}
}
variable "sku_name" {
  description = "The SKU name for the Key Vault."
  type        = string
  default     = "standard"
}
variable "tenant_id" {
  description = "The Azure Active Directory tenant ID."
  type        = string
}
variable "purge_protection_enabled" {
  description = "Whether to enable purge protection for the Key Vault."
  type        = bool
  default     = false
}
variable "soft_delete_retention_days" {
  description = "The number of days to retain deleted Key Vaults."
  type        = number
}
variable "admin_object_id" {
  description = "The object ID of the administrator for the Key Vault."
  type        = string
}