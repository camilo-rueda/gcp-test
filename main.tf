provider "google" {
  project = "marat-musaev-training"
  region  = var.location
  impersonate_service_account = "my-sa-acc@marat-musaev-training.iam.gserviceaccount.com"
}

resource "random_integer" "r" {
  min = 1
  max = 999999
}

#final test with Camilo
resource "google_storage_bucket" "bucket" {
  name     = "${var.storage_name}-${random_integer.r.result}"
  location = var.location
  storage_class = var.storage_class
}
