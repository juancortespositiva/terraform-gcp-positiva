variable "project_id" {
  description = "ID del proyecto de GCP"
  type        = string
  default     = "analitica-contact-center-dev"
}

variable "region" {
  description = "Región principal de los recursos"
  type        = string
  default     = "us-central1"
}

variable "environment" {
  description = "Ambiente de despliegue"
  type        = string
  default     = "dev"
}