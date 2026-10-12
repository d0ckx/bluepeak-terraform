resource "azurerm_resource_group" "bluepeak" {
  name     = var.resource_group_name
  location = var.location
}

module "network" {
  source = "../../modules/network"

  resource_group_name = azurerm_resource_group.bluepeak.name
  location            = azurerm_resource_group.bluepeak.location
  vnet_name           = var.vnet_name
  vnet_address_space  = var.vnet_address_space

  subnets = {
    management = {
      name             = "snet-management"
      address_prefixes = var.management_subnet_prefix
    }

    app = {
      name             = "snet-app"
      address_prefixes = var.app_subnet_prefix
    }

    data = {
      name             = "snet-data"
      address_prefixes = var.data_subnet_prefix
    }
  }
}

module "app_nsg" {
  source = "../../modules/nsg"

  name                 = var.app_nsg_name
  location             = azurerm_resource_group.bluepeak.location
  resource_group_name  = azurerm_resource_group.bluepeak.name
  allowed_https_source = var.allowed_https_source
}

resource "azurerm_subnet_network_security_group_association" "app" {
  subnet_id                 = module.network.app_subnet_id
  network_security_group_id = module.app_nsg.nsg_id
}



data "azurerm_resource_group" "tfstate" {
  name = "rg-bluepeak-tfstate-san"
}
