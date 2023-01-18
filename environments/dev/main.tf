terraform {
  backend "gcs" {
    bucket = "dev_gcp_terraform_gcp_template_2023_tfstate"
    prefix = "terraform/state"
  }
}

module "compute" {
  source = "../../modules/compute"

  zone            = local.zone
  allow_http_name = module.network.allow_http_name
}

module "network" {
  source = "../../modules/network"
}
