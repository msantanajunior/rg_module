locals {
  default_tags = {
    Environment = var.environment
    DeployedBy  = "Terraform"
    Application = var.application
  }
  rg_name      = var.rg_name != "" ? replace(var.rg_name, "/[a-z0-9]$/", "$0-") : ""
  rg_name_loc  = lookup(var.prefix_loc_rg, var.location)
  rg_full_name = lower("rg-${local.rg_name_loc}-${var.environment}-${local.rg_name}${var.application}")
}