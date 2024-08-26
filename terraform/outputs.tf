output "bucket_url" {
  description = "The URL of the created bucket"
  value       = google_storage_bucket.mew_bucket.url
}

output "file_url" {
  description = "The URL of the uploaded file"
  value       = google_storage_bucket_object.text_file.self_link
}