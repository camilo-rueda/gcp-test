### infra/inte/providers.tf
locals {
  gcp_secrets_project_id = var.project_prefix ### You can see the project_id of the GCP Project hosting the GCP Secrets instance that was assigned to your service here: https://github.com/optimizely/optimizely-teams-and-services#checking-my-resources
}

terraform {
  #required_version = "~> 1.3"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
    datadog = {
      source  = "DataDog/datadog"
      version = "~> 3.25"
    }
  }
}

provider "google" {
  impersonate_service_account = "my-sa-acc@marat-musaev-training.iam.gserviceaccount.com"
}

data "google_secret_manager_secret_version" "datadog_api_key" {
  secret  = "service_dd_api_key"
  project = local.gcp_secrets_project_id
}

data "google_secret_manager_secret_version" "datadog_app_key" {
  secret  = "service_dd_app_key"
  project = local.gcp_secrets_project_id
}

provider "datadog" {
  api_key = data.google_secret_manager_secret_version.datadog_api_key.secret_data
  app_key = data.google_secret_manager_secret_version.datadog_app_key.secret_data
}
