terraform {
  backend "consul" {
    address = "consul.yinzerlabs.io"
    scheme  = "https"
    path    = "terraform_state/proxmox_tf/vault"
  }
}