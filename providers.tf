terraform {
  required_version = ">= 1.5.0"

  backend "s3" {
    bucket = "tfpocserver"
    key    = "poc-k8s-bastion/terraform.tfstate"
    region = "eu-central" # required but not used by Hetzner

    endpoints = {
      s3 = "https://nbg1.your-objectstorage.com"
    }

    use_path_style = true

    skip_credentials_validation = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
  }

  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "~> 1.45"
    }
  }
}

provider "hcloud" {
  token = var.hcloud_token
}