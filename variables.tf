
variable "global_rg_name" {
  description = "Resource Group for global resources"
}

variable "global_rg_location" {
  description = "Location for RG with global resources"
}

variable "acr_name" {}

variable "acr_mi_name" {}

variable "acr_admin_access" {
  type = bool
}