module "consul_server_1" {
  source         = "git::https://git.yinzerlabs.io/joeterlecki/terraform-proxmox-qemu?ref=v1.0.7"
  clone_template = lookup(var.consul_server_1_vars, "clone_template", )
  cpu_cores      = lookup(var.consul_server_1_vars, "cpu_cores", )
  description    = lookup(var.consul_server_1_vars, "description", )
  gateway_ip     = lookup(var.consul_server_1_vars, "gateway_ip")
  ip_cidr        = lookup(var.consul_server_1_vars, "ip_cidr", )
  storage_pool   = lookup(var.consul_server_1_vars, "storage_pool", )
  storage_size   = lookup(var.consul_server_1_vars, "storage_size", )
  target_node    = lookup(var.consul_server_1_vars, "target_node", )
  vm_id          = lookup(var.consul_server_1_vars, "vm_id", )
  vm_name        = lookup(var.consul_server_1_vars, "vm_name", )
  vm_ram         = lookup(var.consul_server_1_vars, "vm_ram", )
}

module "consul_server_2" {
  source         = "git::https://git.yinzerlabs.io/joeterlecki/terraform-proxmox-qemu?ref=v1.0.7"
  clone_template = lookup(var.consul_server_2_vars, "clone_template", )
  cpu_cores      = lookup(var.consul_server_2_vars, "cpu_cores", )
  description    = lookup(var.consul_server_2_vars, "description", )
  gateway_ip     = lookup(var.consul_server_2_vars, "gateway_ip")
  ip_cidr        = lookup(var.consul_server_2_vars, "ip_cidr", )
  storage_pool   = lookup(var.consul_server_2_vars, "storage_pool", )
  storage_size   = lookup(var.consul_server_2_vars, "storage_size", )
  target_node    = lookup(var.consul_server_2_vars, "target_node", )
  vm_id          = lookup(var.consul_server_2_vars, "vm_id", )
  vm_name        = lookup(var.consul_server_2_vars, "vm_name", )
  vm_ram         = lookup(var.consul_server_2_vars, "vm_ram", )
}

module "consul_server_3" {
  source         = "git::https://git.yinzerlabs.io/joeterlecki/terraform-proxmox-qemu?ref=v1.0.7"
  clone_template = lookup(var.consul_server_3_vars, "clone_template", )
  cpu_cores      = lookup(var.consul_server_3_vars, "cpu_cores", )
  description    = lookup(var.consul_server_3_vars, "description", )
  gateway_ip     = lookup(var.consul_server_3_vars, "gateway_ip")
  ip_cidr        = lookup(var.consul_server_3_vars, "ip_cidr", )
  storage_pool   = lookup(var.consul_server_3_vars, "storage_pool", )
  storage_size   = lookup(var.consul_server_3_vars, "storage_size", )
  target_node    = lookup(var.consul_server_3_vars, "target_node", )
  vm_id          = lookup(var.consul_server_3_vars, "vm_id", )
  vm_name        = lookup(var.consul_server_3_vars, "vm_name", )
  vm_ram         = lookup(var.consul_server_3_vars, "vm_ram", )
}