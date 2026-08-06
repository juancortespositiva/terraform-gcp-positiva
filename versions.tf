terraform {
  required_version = "~> 1.15.0"

  cloud {
    organization = "Positiva"

    workspaces {
      name = "gcp-positiva-dev"
    }
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}