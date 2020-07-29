provider "azurerm" {
  features {}
}

module "asia-ss" {
    source = "./times"
    environment = "production"
    location = "eastasia"
    time_zone = "GMT Standard Time"
    out_hour = 22
    out_minute = 30
    in_hour = 2
    in_minute = 30
}