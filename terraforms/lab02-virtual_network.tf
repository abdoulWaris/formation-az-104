resource "azurerm_resource_group" "my_ressource_group" {
  name     = var.resource_group_name
  location = var.location
  tags = local.tags

}

resource "azurerm_virtual_network" "my_virtual_network" {
  name                = var.vnet_name
  location            = azurerm_resource_group.my_ressource_group.location
  resource_group_name = azurerm_resource_group.my_ressource_group.name
  address_space = var.address_space
  tags = local.tags

}

resource "azurerm_subnet" "my_web_subnet" {
  name                 = "WebSubnet"
  resource_group_name  = azurerm_resource_group.my_ressource_group.name
  virtual_network_name = azurerm_virtual_network.my_virtual_network.name
  address_prefixes = var.web_subnet_prefix
}

resource "azurerm_subnet" "my_app_subnet" {
  name                 = "AppSubnet"
  resource_group_name  = azurerm_resource_group.my_ressource_group.name
  virtual_network_name = azurerm_virtual_network.my_virtual_network.name
  address_prefixes = var.app_subnet_prefix
}

resource "azurerm_subnet" "my_bastion_subnet" {
  name                 = "AzureBastionSubnet" // Ce nom est requis pour le déploiement d'Azure Bastion.
  resource_group_name  = azurerm_resource_group.my_ressource_group.name
  virtual_network_name = azurerm_virtual_network.my_virtual_network.name
  address_prefixes = var.bastion_subnet_prefix
}