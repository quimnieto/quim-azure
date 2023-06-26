variable "resource_group_name" {
}

variable "location" {
}

variable "container_registry_name" {
  default = "containerregistryquim"
}

variable "container_registry_sku" {
  type        = string
  default     = "Basic"
}
