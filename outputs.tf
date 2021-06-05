output "GKE_Endpoint_IP" {
  value = google_container_cluster.primary.endpoint
}

output "Load_Balancer_IP" {
  value     = kubernetes_service.app.load_balancer_ingress[0].ip
  sensitive = false
}
