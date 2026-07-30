output "public_ip" {

  value = azurerm_public_ip.linux.ip_address

}

output "ssh_connection" {

  value = "ssh ${var.admin_username}@${azurerm_public_ip.linux.ip_address}"

}

output "vm_id" {

  value = azurerm_linux_virtual_machine.linux.id

}

output "nic_id" {

  value = azurerm_network_interface.linux.id

}