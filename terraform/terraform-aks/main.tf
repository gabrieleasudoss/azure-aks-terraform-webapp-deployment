resource "azurerm_resource_group" "setup" {
  name     = local.az_resource_group_name
  location = var.az_location
}
resource "azurerm_role_assignment" "role_acrpull" {
  scope                            = azurerm_container_registry.acr.id
  role_definition_name             = "AcrPull"
  principal_id                     = azurerm_kubernetes_cluster.aks.kubelet_identity.0.object_id
  skip_service_principal_aad_check = true
}

resource "azurerm_container_registry" "acr" {
  name                = var.az_acr_name
  resource_group_name = azurerm_resource_group.setup.name
  location            = var.az_location
  sku                 = "Standard"
  admin_enabled       = true
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.az_cluster_name
  kubernetes_version  = var.az_kubernetes_version
  location            = var.az_location
  resource_group_name = azurerm_resource_group.setup.name
  dns_prefix          = var.az_cluster_name

  default_node_pool {
    name                = "system"
    node_count          = var.az_system_node_count
    vm_size             = "Standard_DS2_v2"
    type                = "VirtualMachineScaleSets"
    zones               = [2]
    enable_auto_scaling = false
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    load_balancer_sku = "standard"
    network_plugin    = "kubenet"
  }
}