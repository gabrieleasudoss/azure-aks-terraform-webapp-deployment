variable "prefix" {
  type        = string
  description = "Naming prefix for resources"
  default     = "flaskapp"
}
variable "az_location" {
  type        = string
  description = "Resources location in Azure"
  default     = "CentralUS"
}
variable "az_cluster_name" {
  type        = string
  description = "AKS name in Azure"
  default     = "flaskappakscluster"
}
variable "az_kubernetes_version" {
  type        = string
  description = "Kubernetes version"
  default     = "1.29"
}
variable "az_system_node_count" {
  type        = number
  description = "Number of AKS worker nodes"
  default     = 2
}
variable "az_acr_name" {
  type        = string
  description = "Azure Container Registry (ACR) name"
  default     = "flaskappaksacr"
}
resource "random_integer" "suffix" {
  min = 10000
  max = 99999
}
locals {
  az_cluster_name        = "${lower(var.prefix)}akscluster${random_integer.suffix.result}"
  az_acr_name            = "${lower(var.prefix)}aksacr${random_integer.suffix.result}"
  az_resource_group_name = "${var.prefix}aksrg"
}