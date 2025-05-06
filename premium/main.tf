resource "azurerm_resource_group" "rg1" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_app_service_plan" "main" {

  name                = var.name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg1.name
  kind                = "app"

  sku {
   
    tier     = var.tier
    size     = var.size
  
    capacity = var.minimum_instance_count
  }

  maximum_elastic_worker_count = var.maximum_instance_count

 

}

