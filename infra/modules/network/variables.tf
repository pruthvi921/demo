variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string  
}
variable "address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
}
variable "location" {
  description = "The Azure region where the virtual network will be created."
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group where the virtual network will be created."
  type        = string
}
variable "subnets" {
  description = "A map of subnet names to address prefixes for the virtual network."
  type        = map(string)
  default     = {}
}
variable "tags" {
  description = "Tags to apply to the virtual network."
  type        = map(string)
  default     = {}
}
variable "subscription_id" {
  description = "The Azure subscription ID where the virtual network will be created."
  type        = string
}
variable "vnet_id" {
  description = "The ID of the virtual network."
  type        = string
}
variable "subnet_ids" {
  description = "A map of subnet names to their IDs."
  type        = map(string)
  default     = {}
}
