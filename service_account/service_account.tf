
resource "google_service_account" "sa_deployment" {
  account_id   = "service-account-tpv"
  display_name = "A service account for Github actions deployment"
}

resource "google_project_iam_binding" "viewer-project-iam" {
  role               = "roles/viewer"
  members = [
    "serviceAccount:${google_service_account.sa_deployment.email}"
  ]
}

resource "google_project_iam_binding" "kubernetes-engine-developer-project-iam" {
  role               = "roles/container.developer"
  members = [
    "serviceAccount:${google_service_account.sa_deployment.email}"
  ]
}

resource "google_project_iam_binding" "serviceaccountuser-project-iam" {
  role               = "roles/iam.serviceAccountUser"
  members = [
    "serviceAccount:${google_service_account.sa_deployment.email}"
  ]
}

resource "google_project_iam_binding" "storage-admin-project-iam" {
  role               = "roles/storage.admin"
  members = [
    "serviceAccount:${google_service_account.sa_deployment.email}"
  ]
}

resource "google_project_iam_binding" "cloud-run-admin-project-iam" {
  role               = "roles/run.admin"
  members = [
    "serviceAccount:${google_service_account.sa_deployment.email}"
  ]
}
