resource "kubernetes_deployment" "app" {
  metadata {
    name = var.app
    labels = {
      app = var.app
    }
  }
  spec {
    replicas = 1

    selector {
      match_labels = {
        app = var.app
      }
    }
    template {
      metadata {
        labels = {
          app = var.app
        }
      }
      spec {
        container {
          image = var.docker-image
          name  = var.app
          port {
            name           = "port-22"
            container_port = 21
          }
          env {
            name = "FTP_USER_NAME"
            value = "ftp"
          }
          env {
            name = "FTP_USER_PASS"
            value = "ftp"
          }
          env {
            name = "FTP_USER_HOME"
            value = "/home/ftp"
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "app" {
  metadata {
    name = var.app
  }
  spec {
    selector = {
      app = kubernetes_deployment.app.metadata.0.labels.app
    }
    port {
      port        = 21
      target_port = 21
    }
    type = "LoadBalancer"
  }
}
