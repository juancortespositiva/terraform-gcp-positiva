provider "google" {
  project = "analitica-contact-center-dev"
  region  = "us-central1"
}

data "google_project" "actual" {}

output "proyecto_gcp_verificado" {
  value = data.google_project.actual.project_id
}