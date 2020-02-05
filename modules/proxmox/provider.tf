provider "proxmox" {
  pm_api_url        = "${var.proxmox_api_endpoint}/api2/json"
  pm_tls_insecure   = "${var.proxmox_api_insecure}"

  pm_user           = "${var.proxmox_api_user}"
  pm_password       = "${var.proxmox_api_password}"
}
