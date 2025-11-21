terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
  subscription_id = "aab0d782-8f4e-4b02-a6d1-de41d07116f8"
  tenant_id       = "8794bcae-db57-4b49-8a86-e12bfa6f40d1"
  client_id       = "51851a57-e904-45d0-8a65-0f674fe3d2b1"
  client_secret   = "q_X8Q~ioVoTGsid5r~2wxQ8CMRhpb3_~yYfRWc_J"
}



