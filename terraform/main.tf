provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "mew_bucket" {
  name     = var.bucket_name
  location = "US"
}

resource "google_storage_bucket_object" "text_file" {
  name   = "text.txt"
  bucket = google_storage_bucket.mew_bucket.name
  source = "../text.txt"
}