variable "resource_group_name" {
  description = "The name of the resource group in which to create the AKS cluster."
  type        = string
}

variable "aks_name" {
  description = "The name of the AKS cluster."
  type        = string
}

variable "location" {
  description = "The Azure region where the AKS cluster will be deployed."
  type        = string
}

variable "kubernetes_version" {
  description = "The version of Kubernetes to use for the AKS cluster."
  type        = string
  default     = "1.27.3"
}
variable "node_count" {
  description = "The number of nodes in the AKS cluster."
  type        = number
  default     = 3
}
variable "node_vm_size" {
  description = "The size of the virtual machines for the AKS nodes."
  type        = string
  default     = "Standard_DS2_v2"
}
variable "enable_auto_scaling" {
  description = "Whether to enable auto-scaling for the AKS cluster."
  type        = bool
  default     = false
}
variable "min_count" {
  description = "The minimum number of nodes for auto-scaling."
  type        = number
  default     = 1
}
variable "max_count" {
  description = "The maximum number of nodes for auto-scaling."
  type        = number
  default     = 5
}
variable "subnet_id" {
  description = "The ID of the subnet in which to deploy the AKS cluster."
  type        = string
}
variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster."
  type        = string
}
variable "tags" {
  description = "Tags to apply to the AKS cluster."
  type        = map(string)
  default     = {}
}
variable "acr_id" {
  description = "The ID of the Azure Container Registry to which the AKS cluster will connect."
  type        = string
}
variable "os_disk_size_gb" {
  description = "The size of the OS disk for the AKS nodes in GB."
  type        = number 
}