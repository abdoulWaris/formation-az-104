variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
}

variable "vnet_name" {
  description = "Virtual Network Name"
  type        = string
}

variable "address_space" {
  description = "VNet Address Space"
  type        = list(string)
}

variable "web_subnet_prefix" {
  description = "Web Subnet Address Prefixes"
  type        = list(string)
}

variable "app_subnet_prefix" {
  description = "App Subnet Address Prefixes"
  type        = list(string)
}

variable "bastion_subnet_prefix" {
  description = "Bastion Subnet Address Prefixes"
  type        = list(string)
}