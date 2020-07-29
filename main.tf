provider "azurerm" {
    features {}
}
resource "azurerm_resource_group" "Netflix" {
    name = "Netflix-RG"
    location = "uk south"
}
module "uk-london" {
    source = "./London/"
    resource_group_name = azurerm_resource_group.Netflix.name
    resource_group_location = azurerm_resource_group.Netflix.location
    resource_group_tags = "Production"
}
module "uk-Mon"{
    source = "./London/Monitor"
    resource_group_name = azurerm_resource_group.Netflix.name
    resource_group_location = azurerm_resource_group.Netflix.location
}
