resource "proxmox_vm_qemu" "cloudinit" {
  name          = "${var.proxmox_vm_name}"
  desc          = "${var.proxmox_vm_description}"

  target_node   = "${var.proxmox_cluster_node}"
  pool          = "${var.proxmox_cluster_pool}"

  clone         = "${var.proxmox_vm_template}"
  full_clone    = "${var.proxmox_vm_full_clone}"

  os_type       = "${var.proxmox_vm_os_type}"
  agent         = "${var.proxmox_vm_agent}"

  onboot        = "${var.proxmox_vm_auto_start}"
  
  cpu           = "${var.proxmox_vm_cpu_type}"
  cores         = "${var.proxmox_vm_cpu_cores}"
  sockets       = "${var.proxmox_vm_cpu_sockets}"
  memory        = "${var.proxmox_vm_memory}"

  numa          = "${var.proxmox_vm_numa}"
  hotplug       = "${var.proxmox_vm_hotplug}"

  disk {
    id          = 0
    type        = "${var.proxmox_vm_disk_type}"
    size        = "${var.proxmox_vm_disk_size}"
    storage     = "${var.proxmox_cluster_storage}"
  }

  network {
    id          = 0
    model       = "${var.proxmox_vm_net_type}"
    bridge      = "${var.proxmox_vm_net_bridge}"
    firewall    = "${var.proxmox_vm_net_firewall}"
    tag         = "${var.proxmox_vm_net_vlan}"
  }

  ipconfig0     = "ip=${var.proxmox_vm_net_ipv4_address}/${var.proxmox_vm_net_ipv4_prefix},gw=${var.proxmox_vm_net_ipv4_gateway}"

  nameserver    = "${var.proxmox_vm_dns_nameserver}"
  searchdomain  = "${var.proxmox_vm_dns_searchdomain}"

  ciuser        = "${var.proxmox_vm_ssh_user}"
  cipassword    = "${var.proxmox_vm_ssh_password}"

  sshkeys       = "${var.proxmox_vm_ssh_keys}"
}
