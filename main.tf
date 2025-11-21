resource "azurerm_resource_group" "rg" {
  name     = "demo-terraform-rg"
  location = "East US"
}

resource "azurerm_storage_account" "example" {
  name                = "stgeusprd001"
  resource_group_name = azurerm_resource_group.rg.name

  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_virtual_network" "example" {
  name                = "workload-network-001"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]
  
  subnet {
    name             = "subnet1"
    address_prefixes = ["10.0.1.0/24"]
  }
  
  tags = {
    environment = "Dev"
  }
}
