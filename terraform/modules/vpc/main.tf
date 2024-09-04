# main.tf
module "test-vpc-module" {
  source       = "terraform-google-modules/network/google"
  version      = "~> 9.0"
  project_id   = var.project_id
  network_name = var.vpc_name
  mtu          = 1460

  subnets = [
    {
      subnet_name   = "subnet-us-east-192"
      subnet_ip     = "192.168.1.0/24"
      subnet_region = "us-east4"
    }
  ]
}

resource "google_compute_firewall" "allow_internal" {
  name    = "${var.vpc_name}-allow-internal"
  network = "shortlet-vpc"

  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }

  allow {
    protocol = "udp"
    ports    = ["0-65535"]
  }

  allow {
    protocol = "icmp"
  }

  source_ranges = ["10.0.0.0/8"]
}

resource "google_compute_firewall" "allow_ssh" {
  name    = "${var.vpc_name}-allow-ssh"
  network = "shortlet-vpc"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges =  ["35.235.240.0/20"] 
}
