variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
}

variable "resource_group_name" {
  description = "Existing Resource Group"
  type        = string
}

variable "virtual_network_name" {
  description = "Existing Virtual Network"
  type        = string
}

variable "subnet_name" {
  description = "Subnet where the VM will be deployed"
  type        = string
}

variable "vm_name" {
  description = "Linux VM Name"
  type        = string
}

variable "vm_size" {
  description = "Azure VM Size"
  type        = string
}

variable "admin_username" {
  description = "Administrator Username"
  type        = string
}

variable "ssh_public_key_path" {
  description = "SSH Public Key Path"
  type        = string
}