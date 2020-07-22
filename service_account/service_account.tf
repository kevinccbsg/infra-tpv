
resource "google_service_account" "sa_deployment" {
  account_id   = "service-account-tpv"
  display_name = "A service account for Github actions deployment"
}

resource "google_service_account_iam_binding" "viewer-iam" {
  service_account_id = google_service_account.sa_deployment.name
  role               = "roles/viewer"
  members = [
    "serviceAccount:${google_service_account.sa_deployment.email}"
  ]
}

resource "google_service_account_iam_binding" "kubernetes-engine-developer-iam" {
  service_account_id = google_service_account.sa_deployment.name
  role               = "roles/container.developer"
  members = [
    "serviceAccount:${google_service_account.sa_deployment.email}"
  ]
}

resource "google_service_account_iam_binding" "serviceaccountuser-iam" {
  service_account_id = google_service_account.sa_deployment.name
  role               = "roles/iam.serviceAccountUser"
  members = [
    "serviceAccount:${google_service_account.sa_deployment.email}"
  ]
}

resource "google_service_account_iam_binding" "storage-admin-iam" {
  service_account_id = google_service_account.sa_deployment.name
  role               = "roles/storage.admin"
  members = [
    "serviceAccount:${google_service_account.sa_deployment.email}"
  ]
}

resource "google_service_account_iam_binding" "cloud-run-admin-iam" {
  service_account_id = google_service_account.sa_deployment.name
  role               = "roles/run.admin"
  members = [
    "serviceAccount:${google_service_account.sa_deployment.email}"
  ]
}
