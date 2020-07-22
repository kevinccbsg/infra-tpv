

terraform {
  backend "gcs" {
    credentials = "credential.json"
    bucket      = "PROJECT_ID-tfstate"
  }
}

resource "google_project_service" "crm_api" {
  service = "cloudresourcemanager.googleapis.com"
}

provider "google" {
  credentials = file("credential.json")
  project     = var.project_id
  region      = var.project_region
}

module "gke" {
  source         = "./gke"
  project_region = var.project_region
}

module "service_account" {
  source = "./service_account"
}
