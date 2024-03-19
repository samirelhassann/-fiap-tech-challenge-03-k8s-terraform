resource "azurerm_storage_account" "sa" {
  name                     = var.storage_account_name
  resource_group_name      = data.azurerm_resource_group.aks_rg.name
  location                 = data.azurerm_resource_group.aks_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "sc" {
  name                  = var.storage_account_container_name
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
  depends_on = [azurerm_storage_account.sa]
}