variable "resource_group_name" {
  default     = "tech-challenge-db"
  description = "The name of the resource group in which to create the database."
}

variable "resource_group_location" {
  type        = string
  default     = "eastus"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "mysql-fs-db-rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "virtual_network_name" {
  default     = "tech-challenge-db-virtual-network"
  description = "The name of the virtual network."
}

variable "subnet_name" {
  default     = "tech-challenge-db-subnet"
  description = "The name of the subnet."
}

variable "private_dns_zone_name" {
  default     = "tech-challenge-db-private-dns-zone"
  description = "The name of the dns zone."
}

variable "private_dns_zone_virtual_network_link_name" {
  default     = "tech-challenge-db-private-dns-zone"
  description = "The name of the dns zone virtual network link."
}

variable "mysql_flexible_server_name" {
  default     = "tech-challenge"
  description = "The name of mysql flexible server"
}

variable "administrator_login" {
  default     = "mysqlfs"
  description = "The db administrator login"
}

variable "administrator_password" {
  default     = "H@Sh1CoR3!"
  description = "The db administrator password"
}

variable "mysql_flexible_server_database_name" {
  default     = "tech-challenge-mysql-db"
  description = "The name of mysql flexible server database"
}

variable "subscription_id" {
  description = "The subscription id azure account"
}

variable "appId" {
  description = "Azure Database service principal"
}

variable "password" {
  description = "Azure Database Service password"
}

variable "tenant_id" {
  description = "Azure Database service principal tenant id"
}