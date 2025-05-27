variable "acr_name" {
  description = "The name of the Azure Container Registry."
  type        = string   
}
variable "acr_sku" {
  description = "The SKU of the Azure Container Registry."
  type        = string
}
variable "acr_tags" {
  description = "Tags to apply to the Azure Container Registry."
  type        = map(string)
  default     = {}
}
variable "acr_id" {
  description = "The ID of the Azure Container Registry."
  type        = string
}
variable "location" {
  description = "The Azure region where the resources will be created."
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group where the Azure Container Registry will be created."
  type        = string
}
variable "subscription_id" {
  description = "The Azure subscription ID where the resources will be created."
  type        = string
}