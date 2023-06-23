variable "resource_group_name" {
}

variable "location" {
}

variable "container_registry_name" {
  default = "containerRegistryQuim"
}

variable "container_registry_sku" {
  type        = string
  default     = "Basic"
}
