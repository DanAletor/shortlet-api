output "namespace" {
  description = "Kubernetes namespace for the API"
  value       = kubernetes_namespace.api.metadata[0].name
}

output "service_name" {
  description = "Kubernetes service name"
  value       = kubernetes_service.api_service.metadata[0].name
}

output "ingress_name" {
  description = "Kubernetes ingress name"
  value       = kubernetes_ingress.api_ingress.metadata[0].name
}
