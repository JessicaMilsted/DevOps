resource "azurerm_service_plan" "service_plan" {
  name                = "serviceplan"
  resource_group_name = "RG-SHAPE-DIGITAL"
  location            = "Brazil South"
  os_type             = "Linux"
  sku_name            = "P1v2"
    tags = {
    Created-by = "Jessica Milsted"
  } 
}