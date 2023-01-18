provider "google" {
  credentials = file(var.dev_google_application_credentials)
  project     = var.dev_gcp_project
  region      = local.region
  zone        = local.zone
}
