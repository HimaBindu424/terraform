
module "plan2" {
  source   = "../premium"
  name     = "testserviceplan" 
  size     = "P1v2"
  tier     = "PremiumV2"
  resource_group_name  = "testrg3"
  location = "WEST EUROPE"
  

}


module "app2" {
  source  = "../base"
  resource_group_name  = "testrg3"
  location = "WEST EUROPE"
  name    = "testwebapp33w5"
  plan_id = module.plan2.id
  app_settings = {
    "WEBSITE_NODE_DEFAULT_VERSION" = "6.9.1"
  }
    
    java_version = "1.8"
    java_container = "JAVA"
    java_container_version = "SE"

}
