resource "azurerm_linux_web_app" "webapp" {
  name                  = "shapedigital"
  location              = "Brazil South"
  resource_group_name   = "RG-SHAPE-DIGITAL"
  service_plan_id       = "/subscriptions/2ddd9fc0-a309-4621-a5b9-25104ce69bf6/resourceGroups/RG-SHAPE-DIGITAL/providers/Microsoft.Web/serverfarms/serviceplan"
  https_only            = true
  site_config { 
    minimum_tls_version = "1.2"
  }
    tags = {
    Created-by = "Jessica Milsted"
  }  
}