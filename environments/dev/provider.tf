provider "google" {
  project      = "quantum-spring-375112"
  region       = local.region
  zone         = local.zone
  access_token = var.dev_access_token
}
