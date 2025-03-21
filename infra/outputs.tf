output "project_id" {
  description = "The GCP project ID"
  value       = var.project_id
}

output "gcr_host" {
  description = "The Container Registry hostname"
  value       = "us.gcr.io"
}

output "gcr_repo_path" {
  description = "The full Container Registry repository path"
  value       = "us.gcr.io/${var.project_id}"
}

output "kubernetes_cluster_name" {
  description = "GKE Cluster Name"
  value       = google_container_cluster.gke_cluster.name
}

output "kubernetes_cluster_location" {
  description = "GKE Cluster Location"
  value       = google_container_cluster.gke_cluster.location
}

output "artifact_registry_repository" {
  value = google_artifact_registry_repository.hello_world.name
}