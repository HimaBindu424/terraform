
resource "azurerm_resource_group" "rg1" {
  name     = "testrg"
  location = var.location
}

resource "azurerm_app_service" "main" {

  name                = var.name
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
  app_service_plan_id = var.plan_id
  https_only          = var.https_only
  client_cert_enabled = var.client_certificate

  site_config {
    always_on          = var.always_on
    ftps_state         = var.ftps
    websockets_enabled = var.websockets
    min_tls_version    = var.minimum_tls_version
    health_check_path  = var.health_check_path
    dotnet_framework_version = var.dotnet_framework_version
    java_version = var.java_version
    java_container = var.java_container
    java_container_version = var.java_container_version

    
  }

  identity {
    type = "SystemAssigned"
  }



  auth_settings {
    enabled                       = var.authentication
    unauthenticated_client_action = var.allow_anonymous ? "AllowAnonymous" : "RedirectToLoginPage"
  }


}

