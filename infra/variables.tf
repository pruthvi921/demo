variable "resource_group_name" {}
variable "location" {}
variable "vnet_name" {}
variable "vnet_address_space" {
  type = list(string)
}
variable "subnets" {
  type = map(string)
}
variable "acr_name" {}
variable "acr_sku" {}
variable "aks_name" {}
variable "node_count" { default = 2 }
variable "node_vm_size" { default = "Standard_DS2_v2" }
variable "dns_prefix" {}
variable "acr_id" {
  type = string
}
variable "tags" {
  type = map(string)
  default = {
    environment = "dev"
    owner       = "devops-team"
  }
}
variable "kubernetes_version" {
  type    = string
  default = "1.21.2"
}
variable "os_disk_size_gb" {
  type    = number
  default = 30
}
variable "enable_auto_scaling" {
  type    = bool
  default = true
}
variable "min_count" {}
variable "max_count" {}
variable "subnet_id" {
  type = string
}
variable "subscription_id" {
  type = string
  description = "Azure Subscription ID where resources will be deployed."
}
variable "aks_version" {
  type    = string
  description = "Version of AKS to deploy."
}
variable "aks_identity_type" {
  type    = string
  description = "Type of identity to use for AKS. Options: 'SystemAssigned', 'UserAssigned', 'None'."
}
variable "kv_name" {
  type    = string
  description = "Name of the Azure Key Vault."
}
variable "kv_id" {
  type    = string
  description = "ID of the Azure Key Vault."
}
variable "key_vault_secret_name" {
  type    = string
  description = "Name of the secret in Azure Key Vault."
}
variable "key_vault_secret_value" {
  type    = string
  description = "Value of the secret in Azure Key Vault."
}
variable "key_vault_secret_version" {
  type    = string
  description = "Version of the secret in Azure Key Vault."
}
variable "key_vault_access_policy" {
  type = object({
    tenant_id   = string
    object_id   = string
    permissions = map(list(string))
  })
  description = "Access policy for Azure Key Vault."
}
variable "key_vault_access_policy_id" {
  type    = string
  description = "ID of the access policy in Azure Key Vault."
}
variable "key_vault_tags" {
  type = map(string)
  default = {
    environment = "dev"
    owner       = "devops-team"
  }
}