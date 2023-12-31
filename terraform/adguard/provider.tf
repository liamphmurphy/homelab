terraform {
  required_providers {
    adguard = {
      source  = "gmichels/adguard"
      version = "1.1.2"
    }
  }
}

variable "adguard_username" { sensitive = true }
variable "adguard_password" { sensitive = true }

# configuration for the provider
provider "adguard" {
  host     = "192.168.0.3"
  username = var.adguard_username
  password = var.adguard_password
  scheme   = "http" # defaults to https
}
