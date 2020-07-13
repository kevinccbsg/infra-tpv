

terraform {
  backend "gcs" {
    credentials = var.project_credential
    bucket      = "PROJECT_ID-tfstate"
  }
}


provider "google" {
  credentials = base64decode(var.project_credential)
  project     = var.project_id
  region      = var.project_region
}
