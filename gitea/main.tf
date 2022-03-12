module "gitea_server" {
  source         = "git::https://git.yinzerlabs.io/joeterlecki/terraform-proxmox-qemu?ref=v1.0.5"
  clone_template = lookup(var.server_vars, "clone_template", )
  cpu_cores      = lookup(var.server_vars, "cpu_cores", )
  description    = lookup(var.server_vars, "description", )
  gateway_ip     = lookup(var.server_vars, "gateway_ip")
  ip_cidr        = lookup(var.server_vars, "ip_cidr", )
  storage_pool   = lookup(var.server_vars, "storage_pool", )
  storage_size   = lookup(var.server_vars, "storage_size", )
  target_node    = lookup(var.server_vars, "target_node", )
  vm_id          = lookup(var.server_vars, "vm_id", )
  vm_name        = lookup(var.server_vars, "vm_name", )
  vm_ram         = lookup(var.server_vars, "vm_ram", )
}

module "gitea_mariadb" {
  source         = "git::https://git.yinzerlabs.io/joeterlecki/terraform-proxmox-qemu?ref=v1.0.5"
  clone_template = lookup(var.mariadb_vars, "clone_template", )
  cpu_cores      = lookup(var.mariadb_vars, "cpu_cores", )
  description    = lookup(var.mariadb_vars, "description", )
  gateway_ip     = lookup(var.mariadb_vars, "gateway_ip")
  ip_cidr        = lookup(var.mariadb_vars, "ip_cidr", )
  storage_pool   = lookup(var.mariadb_vars, "storage_pool", )
  storage_size   = lookup(var.mariadb_vars, "storage_size", )
  target_node    = lookup(var.mariadb_vars, "target_node", )
  vm_id          = lookup(var.mariadb_vars, "vm_id", )
  vm_name        = lookup(var.mariadb_vars, "vm_name", )
  vm_ram         = lookup(var.mariadb_vars, "vm_ram", )
}