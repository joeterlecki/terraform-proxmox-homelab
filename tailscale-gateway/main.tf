module "tailscale_gateway_server" {
  source         = "git::https://git.yinzerlabs.io/joeterlecki/terraform-proxmox-qemu?ref=v1.0.7"
  clone_template = lookup(var.tailscale_gw_vars, "clone_template", )
  cpu_cores      = lookup(var.tailscale_gw_vars, "cpu_cores", )
  description    = lookup(var.tailscale_gw_vars, "description", )
  gateway_ip     = lookup(var.tailscale_gw_vars, "gateway_ip")
  ip_cidr        = lookup(var.tailscale_gw_vars, "ip_cidr", )
  storage_pool   = lookup(var.tailscale_gw_vars, "storage_pool", )
  storage_size   = lookup(var.tailscale_gw_vars, "storage_size", )
  target_node    = lookup(var.tailscale_gw_vars, "target_node", )
  vm_id          = lookup(var.tailscale_gw_vars, "vm_id", )
  vm_name        = lookup(var.tailscale_gw_vars, "vm_name", )
  vm_ram         = lookup(var.tailscale_gw_vars, "vm_ram", )
}