provider "google" {
  project = "marat-musaev-training"
  region  = var.location
}

resource "random_integer" "r" {
  min = 1
  max = 999999
}

#final test
resource "google_storage_bucket" "bucket" {
  name     = "${var.storage_name}-${random_integer.r.result}"
  location = var.location
  storage_class = var.storage_class
}
