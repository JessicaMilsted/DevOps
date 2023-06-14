resource "azurerm_storage_account" "default" {
  name                     = "sashapedigital"
  resource_group_name      = "RG-SHAPE-DIGITAL"
  location                 = "Brazil South"
  account_tier             = "Standard"
  account_replication_type = "LRS"
    
  tags = {
    Created-by = "Jessica Milsted"
  } 
}