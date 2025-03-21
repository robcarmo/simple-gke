provider "google" {
  project = "gen-lang-client-0683956833"
  region  = "us-east1"
}

resource "google_container_cluster" "gke_cluster" {
  name     = "basic-gke-cluster"
  location = "us-east1"

  remove_default_node_pool = true
  initial_node_count       = 1

  network    = "default"
  subnetwork = "default"
}

resource "google_container_node_pool" "default_pool" {
  name       = "default-pool"
  cluster    = google_container_cluster.gke_cluster.name
  location   = google_container_cluster.gke_cluster.location
  node_count = 1

  node_config {
    machine_type = "e2-medium"
    disk_size_gb = 16
    preemptible  = false

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }
}

resource "google_compute_route" "default_internet_gateway" {
  name             = "default-internet-gateway"
  network          = "default"
  dest_range       = "0.0.0.0/0"
  next_hop_gateway = "default-internet-gateway"
}

# this is the main cluster
# test yyyy