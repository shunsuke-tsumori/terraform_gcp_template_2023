module "compute" {
  source = "../../modules/compute"

  zone            = local.zone
  allow_http_name = module.network.allow_http_name
}

module "network" {
  source = "../../modules/network"
}
