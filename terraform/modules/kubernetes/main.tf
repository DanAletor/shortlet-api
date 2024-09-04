resource "kubernetes_namespace" "api" {
  metadata {
    name = "api-namespace"
  }
}

resource "kubernetes_deployment" "api_deployment" {
  metadata {
    name      = "api-deployment"
    namespace = kubernetes_namespace.api.metadata[0].name
  }

  spec {
    replicas = 3

    selector {
      match_labels = {
        app = "api"
      }
    }

    template {
      metadata {
        labels = {
          app = "api"
        }
      }

      spec {
        container {
          image = "availability-api:latest"
          name  = "api"

          port {
            container_port = 8080
          }


        }
      }
    }
  }
}

resource "kubernetes_service" "api_service" {
  metadata {
    name      = "api-service"
    namespace = kubernetes_namespace.api.metadata[0].name
  }

  spec {
    selector = {
      app = "api"
    }

    type = "LoadBalancer"

    port {
      port = 80
      target_port = 8080
    }

  }
}

resource "kubernetes_ingress" "api_ingress" {
  metadata {
    name      = "api-ingress"
    namespace = kubernetes_namespace.api.metadata[0].name
  }

  spec {
    backend {
      service_name = kubernetes_service.api_service.metadata[0].name
      service_port = 80
    }
  }
}
