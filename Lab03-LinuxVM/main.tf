resource "azurerm_public_ip" "linux" {

  name                = "${var.vm_name}-pip"
  location            = var.location
  resource_group_name = data.azurerm_resource_group.rg.name

  allocation_method = "Static"
  sku               = "Standard"

  tags = local.tags

}

resource "azurerm_network_interface" "linux" {

  name                = "${var.vm_name}-nic"
  location            = var.location
  resource_group_name = data.azurerm_resource_group.rg.name

  ip_configuration {

    name                          = "internal"

    subnet_id                     = data.azurerm_subnet.web.id

    private_ip_address_allocation = "Dynamic"

    public_ip_address_id          = azurerm_public_ip.linux.id

  }

  tags = local.tags

}

resource "azurerm_linux_virtual_machine" "linux" {

  name                = var.vm_name

  resource_group_name = data.azurerm_resource_group.rg.name

  location            = var.location

  size                = var.vm_size

  admin_username      = var.admin_username

  network_interface_ids = [

    azurerm_network_interface.linux.id

  ]

  disable_password_authentication = true

  admin_ssh_key {

    username   = var.admin_username

    public_key = file(var.ssh_public_key_path)

  }

  os_disk {

    caching              = "ReadWrite"

    storage_account_type = "Standard_LRS"

  }

  source_image_reference {

    publisher = "Canonical"

    offer = "0001-com-ubuntu-server-jammy"

    sku = "22_04-lts"

    version = "latest"

  }

  tags = local.tags

}