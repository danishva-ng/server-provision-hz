############################################
# Reference Existing SSH Key
############################################

data "hcloud_ssh_key" "existing" {
  name = "poc-k8s-game"
  
}

############################################
# Create Public VM
############################################

resource "hcloud_server" "vm" {
  name        = var.server_name
  image       = var.image
  server_type = var.server_type
  location    = var.location

  ssh_keys = [
    data.hcloud_ssh_key.existing.id
  ]

  labels = {
    environment = "lab"
    managed_by  = "terraform"
    project     = "gaming-k8s"
  }
}