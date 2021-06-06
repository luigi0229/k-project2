provider "google" {
  project = var.GCP_project_name

  region  = var.region
}

data "google_client_config" "default" {}

module "kubernetes-engine" {
  source  = "terraform-google-modules/kubernetes-engine/google"
  version = "14.3.0"
}

provider "kubernetes" {
  load_config_file       = false
  host                   = google_container_cluster.primary.endpoint
  token                  = data.google_client_config.default.access_token
  cluster_ca_certificate = base64decode(google_container_cluster.primary.master_auth[0].cluster_ca_certificate)
}
