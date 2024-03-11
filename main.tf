provider "google" {
  project = "marat-musaev-training"
  region  = var.location
}

resource "google_storage_bucket" "bucket" {
  name     = var.storage_name
  location = var.location
  storage_class = var.storage_class
}
