# Configure Resource Group
resource "azurerm_resource_group" "example" {
  name = "example-rg"
  location = "West Europe"
}

# Create Storage Account
resource "azurerm_storage_account" "example" {
  name = "example-storage"
  resource_group_name = azurerm_resource_group.example.name
  location = azurerm_resource_group.example.location
  sku {
    name = "Standard_LRS"
  }
}
