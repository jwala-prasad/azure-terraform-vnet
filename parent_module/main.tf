module "rg" {
  source = "../child_module/azurerm_rg"
  rgs    = var.rgs
}

module "snts" {
  source     = "../child_module/azurerm_subnet"
  depends_on = [module.rg, module.vnts]
  snts       = var.snts
}

module "vnts" {
  source     = "../child_module/azurerm_vent"
  depends_on = [module.rg]
  vnts       = var.vnts
}