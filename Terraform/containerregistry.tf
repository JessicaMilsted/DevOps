resource "azurerm_container_registry" "shapedigital" {
  name                = "shapedigital"
  resource_group_name = "RG-SHAPE-DIGITAL"
  location            = "Brazil South"
  sku                 = "Basic"

    tags = {
    Created-by = "Jessica Milsted"
  } 
}