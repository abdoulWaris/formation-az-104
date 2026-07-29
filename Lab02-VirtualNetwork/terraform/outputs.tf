output "resource_group_name" {
  value = azurerm_resource_group.my_ressource_group.name
}

output "virtual_network_name" {
  value = azurerm_virtual_network.my_virtual_network.name
}

output "web_subnet_id" {
  value = azurerm_subnet.my_web_subnet.id
}

output "app_subnet_id" {
  value = azurerm_subnet.my_app_subnet.id
}

output "bastion_subnet_id" {
  value = azurerm_subnet.my_bastion_subnet.id
}