
resource "google_service_account" "sa_deployment" {
  account_id   = "service-account-tpv"
  display_name = "A service account for Github actions deployment"
}
