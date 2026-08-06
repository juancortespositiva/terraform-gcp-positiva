output "bucket_terraform_artifacts_name" {
  description = "Nombre del bucket creado para artefactos"
  value       = google_storage_bucket.terraform_artifacts.name
}

output "bucket_terraform_artifacts_url" {
  description = "URL del bucket en Google Cloud Storage"
  value       = google_storage_bucket.terraform_artifacts.url
}