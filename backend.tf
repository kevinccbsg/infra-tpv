
terraform {
  backend "gcs" {
    credentials = base64decode(var.project_credential)
    bucket      = "PROJECT_ID-tfstate"
  }
}
