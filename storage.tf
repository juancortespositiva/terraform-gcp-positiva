resource "google_storage_bucket" "terraform_artifacts" {
  name     = "gcp-positiva-tf-artifacts-328737502436"
  project  = var.project_id
  location = var.region

  storage_class               = "STANDARD"
  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"
  force_destroy               = false

  versioning {
    enabled = true
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }

    condition {
      age                = 90
      num_newer_versions = 3
      with_state         = "ARCHIVED"
    }
  }

  labels = {
    environment = var.environment
    managed_by  = "terraform"
    purpose     = "artifacts"
  }
}