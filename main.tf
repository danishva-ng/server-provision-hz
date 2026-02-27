############################################
# SSH Key Registration
############################################

resource "hcloud_ssh_key" "github_key" {
  name       = "github-actions-ssh-key"
  public_key = var.ssh_public_key
}

############################################
# Public VM Creation
############################################

resource "hcloud_server" "vm" {
  name        = var.server_name
  image       = var.image
  server_type = var.server_type
  location    = var.location

  ssh_keys = [
    hcloud_ssh_key.github_key.id
  ]

  labels = {
    environment = "lab"
    managed_by  = "terraform"
    project     = "gaming-k8s"
  }
}