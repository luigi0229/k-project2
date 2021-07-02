variable "region" {
  default = "us-east1"
}

variable "zone" {
  default = "us-east1-b"
}

variable "cluster" {
  default = "my-second-cluster"
}

variable "app" {
  default = "wordpress-app"
}

variable "GCP_project_name" {
  default = "gks-sandbox"
}

variable "docker-image" {
  default = "stilliard/pure-ftpd:latest"
}
