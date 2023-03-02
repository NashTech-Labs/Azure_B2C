resource "azurerm_resource_group" "rg" {
  name = var.resource_group_name
  location = var.location
}

resource "azurerm_aadb2c_directory" "Az_B2c" {
  country_code            = var.b2c-country-code
  data_residency_location = var.b2c-data-loc
  display_name            = var.b2c-name
  domain_name            = "${var.b2c-name}.onmicrosoft.com"
  resource_group_name     = azurerm_resource_group.rg.name        
  sku_name                = var.b2c-sku
}