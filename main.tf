#Create Resource Group Name
resource "azurerm_resource_group" "rg" {
    name     = var.resource_group_name
    location = var.resource_group_location
    tags = var.tags 
}

#Create App Service Plan
resource "azurerm_service_plan" "serviceplantesteshape" {
    name                = var.service_plan_name
    location            = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name    
    os_type             = var.os_type
    sku_name            = var.sku_name
    tags = var.tags 
}

#Create App Service
resource "azurerm_app_service" "appservicestesteshape" {
    name                = var.app_service_name
    location            = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    app_service_plan_id = azurerm_service_plan.serviceplantesteshape.id
    tags = var.tags   
}

#create Storage Account
resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  tags = var.tags 
}

#Create Container Registry
resource "azurerm_container_registry" "acrtesteshape" {
  name                = var.container_registry_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = var.sku
  tags = var.tags
}
