data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

resource "azurerm_role_assignment" "role_acrpull" {
  scope                            = azurerm_container_registry.acr.id
  role_definition_name             = "AcrPull"
  principal_id                     = azurerm_kubernetes_cluster.aks.kubelet_identity.0.object_id
  skip_service_principal_aad_check = true
}

resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = var.location
  sku                 = "Basic"
  admin_enabled       = false
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.rg.name
  dns_prefix          = var.cluster_name

  default_node_pool {
    name                = "system"
    node_count          = var.system_node_count
    vm_size             = "Standard_B2s"
    type                = "VirtualMachineScaleSets"
    enable_auto_scaling = false
  }

  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_api_management" "apim" {
  name                = "${var.resource_group_name}-apim"
  location            = var.location
  resource_group_name = data.azurerm_resource_group.rg.name
  publisher_name      = "Samir El Hassan"
  publisher_email     = "samirelhassann@gmail.com"
  sku_name            = "Developer_1"

  identity {
    type = "SystemAssigned"
  }
}
