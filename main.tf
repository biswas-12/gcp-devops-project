
provider "google" {
  project = var.project_id
  region  = var.region
  credentials = file("credentials.json")
}


# Create Artifact Registry for storing Docker images
resource "google_artifact_registry_repository" "artifact_repo" {
  provider = google
  location = var.region
  repository_id = "gcpdevops-repo"
  format = "DOCKER"
}

/*
# Create a GKE Cluster
resource "google_container_cluster" "gke_cluster" {
  name     = "gcp-devops-cluster"
  location = var.region
  remove_default_node_pool = true
  initial_node_count       = 2
}

# Node Pool for GKE Cluster
resource "google_container_node_pool" "gke_nodes" {
  cluster = google_container_cluster.gke_cluster.name
  name    = "gke-node-pool"
  location = var.region
  node_count = 2

  node_config {
    machine_type = "e2-medium"
    oauth_scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }
}

# Create a Cloud Build Trigger
resource "google_cloudbuild_trigger" "github_trigger" {
  name        = "gcpdevops-ci-cd"
  description = "Trigger Cloud Build on GitHub commit"
  github {
    owner = var.github_owner
    name  = var.github_repo
    push {
      branch = "main"
    }
  }

  filename = "cloudbuild.yaml"
}


*/
