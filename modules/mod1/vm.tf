resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "e2-medium"
  zone         = var.zone

  tags = ["foo", "bar"]

  # tfsec:ignore:google-compute-vm-disk-encryption-customer-key
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
    block-project-ssh-keys = true
  }
  shielded_instance_config {
    enable_vtpm = true
  }
}
