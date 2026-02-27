data "hcloud_ssh_key" "existing" {
  name = var.ssh_key_name
}

data "hcloud_network" "private_net" {
  name = var.network_name
}

data "hcloud_firewall" "bastion_fw" {
  name = var.firewall_name
}

resource "hcloud_server" "vm" {
  name        = var.server_name
  image       = var.image
  server_type = var.server_type
  location    = var.location

  ssh_keys = [data.hcloud_ssh_key.existing.id]

  network {
    network_id = data.hcloud_network.private_net.id
  }

  labels = {
    environment = "lab"
    managed_by  = "terraform"
    role        = "bastion"
  }
}

resource "hcloud_firewall_attachment" "bastion_attach" {
  firewall_id = data.hcloud_firewall.bastion_fw.id

  server_ids = [
    hcloud_server.vm.id
  ]
}