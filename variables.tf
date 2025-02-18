variable "project_id" {
  description = "GCP Project ID"
  default     = "cloud-chef-439008"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "us-central1"
}

variable "github_owner" {
  description = "GitHub username or organization"
  default     = "biswas-12"
  type        = string
}

variable "github_repo" {
  description = "GitHub repository name"
  default     = "gcp-devops-project"
  type        = string
}
