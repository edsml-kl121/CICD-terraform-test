variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
  default     = "coastal-cell-299117"
}

variable "region" {
  description = "The region to deploy resources to"
  type        = string
  default     = "us-central1"
}