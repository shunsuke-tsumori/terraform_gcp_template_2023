provider "google" {
  project     = "quantum-spring-375112"
  region      = local.region
  zone        = local.zone
  credentials = file(var.dev_access_token)
}
