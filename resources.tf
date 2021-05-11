
resource "azurerm_resource_group" "rg" {
  name     = local.rg_full_name
  tags     = merge(local.default_tags, var.extra_tags)
  location = var.location
}