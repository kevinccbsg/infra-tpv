
terraform {
  backend "gcs" {
    bucket = "PROJECT_ID-tfstate"
  }
}
