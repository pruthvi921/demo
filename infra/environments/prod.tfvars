resource_group_name = "aize-devops-prod"
location           = "west europe"
vnet_name          = "aize-vnet-prod"
vnet_address_space = ["10.10.0.0/16"]
subnets = {
  "aks"      = "10.10.1.0/24"
  "backend"  = "10.10.2.0/24"
  "frontend" = "10.10.3.0/24"
}
acr_name   = "aizeprodacr"
aks_name   = "aize-aks-prod"
node_count = 2
node_vm_size = "Standard_DS2_v2"
acr_sku = "Basic"
acr_id = "aizeprodacr.azurecr.io"
dns_prefix = "aizeaksprod"
tags = {
  environment = "prod"
  owner       = "devops"
}
kubernetes_version = "1.21.2"
os_disk_size_gb     = 30
enable_auto_scaling = true
min_count           = 1
max_count           = 3
subnet_id = "/subscriptions/your-subscription-id/resourceGroups/aize-devops-stage/providers/Microsoft.Network/virtualNetworks/aize-vnet-stage/subnets/aks"
subscription_id = "your-subscription-id"
aks_version = "1.21.2"
aks_identity_type = "SystemAssigned"
kv_name = "aize-kv-prod"
kv_id = "/subscriptions/your-subscription-id/resourceGroups/aize-devops-dev/providers/Microsoft.KeyVault/vaults/aize-kv-dev"
key_vault_secret_name = "aks-kubeconfig"
key_vault_secret_value = "your-kubeconfig-secret-value"
key_vault_secret_version = "your-kubeconfig-secret-version"
key_vault_access_policy = {
  tenant_id = "your-tenant-id"
  object_id = "your-object-id"
  permissions = {
    secrets = ["get", "set", "list"]
  }
}
key_vault_access_policy_id = "/subscriptions/your-subscription-id/resourceGroups/aize-devops-dev/providers/Microsoft.KeyVault/vaults/aize-kv-dev/accessPolicies/your-access-policy-id"
key_vault_tags = {
  environment = "prod"
  owner       = "devops"
}
key_vault_location = "west europe"
key_vault_sku = "standard"
key_vault_enabled_for_deployment = true
acr_tags = {
  environment = "dev"
  owner       = "devops"
}
softdelete_retention_days = 7