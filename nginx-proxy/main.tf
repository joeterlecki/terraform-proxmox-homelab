module "nginx_proxy_server" {
  source         = "git::https://git.yinzerlabs.io/joeterlecki/terraform-proxmox-qemu?ref=v1.0.5"
  clone_template = lookup(var.nginx_vars, "clone_template", )
  cpu_cores      = lookup(var.nginx_vars, "cpu_cores", )
  description    = lookup(var.nginx_vars, "description", )
  gateway_ip     = lookup(var.nginx_vars, "gateway_ip")
  ip_cidr        = lookup(var.nginx_vars, "ip_cidr", )
  storage_pool   = lookup(var.nginx_vars, "storage_pool", )
  storage_size   = lookup(var.nginx_vars, "storage_size", )
  target_node    = lookup(var.nginx_vars, "target_node", )
  vm_id          = lookup(var.nginx_vars, "vm_id", )
  vm_name        = lookup(var.nginx_vars, "vm_name", )
  vm_ram         = lookup(var.nginx_vars, "vm_ram", )
}