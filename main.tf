
 resource "azurerm_resource_group" "global_rg" {
   name     = var.global_rg_name
   location = var.global_rg_location
 }

module "global_acr" {
  source="./modules/acr"
  acr_name = var.acr_name
  acr_mi_name = var.acr_mi_name
  rg_name = var.global_rg_name
  location = var.global_rg_location
  admin_access = var.acr_admin_access
}
