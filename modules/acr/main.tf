resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = var.rg_name
  location            = var.location
  sku                 = "Basic"

    identity {
        type = "UserAssigned"
        identity_ids = [
        azurerm_user_assigned_identity.example.id
        ]
    }

    admin_enabled = var.admin_access
}

resource "azurerm_user_assigned_identity" "example" {
  resource_group_name = var.rg_name
  location            = var.location

  name = var.acr_mi_name
}