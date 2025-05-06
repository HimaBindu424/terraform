terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.30.0"
    }
  }
  required_version = ">= 1.3.0"
}

provider "azurerm"{
    features{}
  client_id       = "b6f52c75-78ae-4629-8d68-e704f65de12b"
  client_secret   = "jRu8Q~7LEsJxmUdo3eKjbRN8.Qfc..fNfzzpjcbi"
  tenant_id       = "47930d19-a1c0-4c4a-8dea-eecc493aff3c"
  subscription_id = "746e958a-94bd-4177-8c5c-813b3212343f"

}