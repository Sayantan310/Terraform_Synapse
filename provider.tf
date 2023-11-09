terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}


provider "azurerm" {
  alias = "prodsubscription"
  features {}
  subscription_id = "c221b419-c4af-4045-92a1-9bf2f8b37f72"

  

}
