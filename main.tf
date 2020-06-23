provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=2.0.0"
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "mattpeters" {
  name     = "mattpeters-resources"
  location = "East US"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "mattpeters" {
  name                = "mattpeters-network"
  resource_group_name = azurerm_resource_group.mattpeters.name
  location            = azurerm_resource_group.mattpeters.location
  address_space       = ["10.0.0.0/16"]
}
