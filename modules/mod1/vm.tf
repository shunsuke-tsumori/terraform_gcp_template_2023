resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "e2-medium"
  zone         = var.zone

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      size  = "10"
    }
  }

  network_interface {
    network = "default"
  }

  metadata = {
    foo = "bar"
  }
}
