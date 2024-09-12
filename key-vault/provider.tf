terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.1.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.6.3"
    }
  }
}
  

provider "azurerm" {
     subscription_id = "63ef9ebb-1c15-45fe-9ed2-8deba3e65eed"
  features {}
    
  }
  provider "random" {
  # Configuration options
}
