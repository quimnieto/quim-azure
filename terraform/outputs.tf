output "resource_group_name" {
  value = module.resource_group.resource_group_name
}

output "acr_login_server" {
  value = module.container_registry.acr_login_server
}

output "acr_admin_user" {
  value     = module.container_registry.acr_admin_user
  sensitive = true
}

output "acr_admin_pass" {
  value     = module.container_registry.acr_admin_pass
  sensitive = true
}

output "vm_public_ip" {
  value = module.virtual_machine.vm_public_ip
}

output "ssh_user" {
  value = module.virtual_machine.ssh_user
}

output "kube_config" {
  value = module.aks_cluster.kube_config
  sensitive = true
}
