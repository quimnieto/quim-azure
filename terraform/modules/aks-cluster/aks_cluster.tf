resource "azurerm_kubernetes_cluster" "cluster" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = "2"
    vm_size    = "standard_d2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_role_assignment" "acrPull" {
    principal_id                     = azurerm_kubernetes_cluster.cluster.kubelet_identity[0].object_id
    role_definition_name             = "AcrPull"
    scope                            = var.acr_id
    skip_service_principal_aad_check = true
}
