data "azurerm_resource_group" "rg" {

  name = var.resource_group_name

}

data "azurerm_virtual_network" "vnet" {

  name                = var.virtual_network_name
  resource_group_name = data.azurerm_resource_group.rg.name

}

data "azurerm_subnet" "web" {

  name                 = var.subnet_name
  virtual_network_name = data.azurerm_virtual_network.vnet.name
  resource_group_name  = data.azurerm_resource_group.rg.name

}