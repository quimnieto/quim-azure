variable "resource_group_name" {
}

variable "location" {
}

variable "network_name" {
  default = "vnet1"
}

variable "subnet_name" {
  default = "subnet1"
}

variable "vm_count" {
  default = 1
}

variable "public_key_path" {
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "ssh_user" {
  type        = string
  default     = "azureroot"
}
