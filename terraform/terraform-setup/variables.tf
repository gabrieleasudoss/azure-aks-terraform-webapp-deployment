variable "prefix" {
  type        = string
  description = "Naming prefix for resources"
  default     = "flaskapp"
}
variable "az_resource_group_name" {
  type        = string
  description = "Resource Group name in Azure"
  default     = "flaskapp-aks-rg"
}
variable "az_location" {
  type        = string
  description = "Resources location in Azure"
  default     = "CentralUS"
}
variable "az_container_name" {
  type        = string
  description = "Name of container on storage account for Terraform state"
  default     = "terraform-state"
}
variable "az_state_key" {
  type        = string
  description = "Name of key in storage account for Terraform state"
  default     = "terraform.tfstate"
}
locals {
  az_resource_group_name  = "${var.prefix}setuprg"
  az_storage_account_name = "${var.prefix}setupsa"
}