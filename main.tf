provider "google" {
  project = var.project_id
  region  = var.region
  zone = var.zone
}

resource "google_compute_instance" "vm_instance" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  labels = {
    environmnet = "terraformlabdevelopment"
    owner = "henil"
  }

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      size = 12
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}