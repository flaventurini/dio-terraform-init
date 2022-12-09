provider "google" {
  project = "{{flaventurini-devops-iac}}"
  region  = "us-central1"
  zone    = "us-central1-a"
}

resource "google_compute_instance" "terraform" {
  project = "flaventurini-devops-iac"
  name = "terraform"
  machine_type = "e2-small"
  zone = "us-central1-a"
  
  boot_disk {
    initialize_params {
      image = "projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20221206"
    }
  }

  network_interface {
    network = "default"
    access_config {

    }
  }
}