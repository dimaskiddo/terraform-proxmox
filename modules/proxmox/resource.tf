resource "proxmox_vm_qemu" "cloudinit-${var.proxmox_vm_name}" {
  name        = "${var.proxmox_vm_name}"
  desc        = "${var.proxmox_vm_description}"

  target_node = "${var.proxmox_node}"
  pool        = "${var.proxmox_pool}"

  clone       = "${var.proxmox_template}"
  os_type     = "cloud-init"

  cores       = "${var.proxmox_vm_cpu_cores}"
  sockets     = "${var.proxmox_vm_cpu_sockets}"
  memory      = "${var.proxmox_vm_memory}"

  disk {
    id        = 0
    size      = "${var.proxmox_vm_disk_size}"
    type      = "${var.proxmox_vm_disk_type}"
    storage   = "${var.proxmox_storage}"
  }

  ipconfig0   = "ip=${var.proxmox_vm_net_address}/${var.proxmox_vm_net_cidr},gw=${var.proxmox_vm_net_gateway}"
  
  sshkeys     = <<EOF
  ${var.proxmox_vm_ssh_key}
  EOF
}
