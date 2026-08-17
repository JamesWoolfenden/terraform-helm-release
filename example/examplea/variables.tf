variable "release" {
  type        = map(any)
  description = "Helm chart and url details"
  default = {
    name            = "ingress-nginx"
    url             = "https://kubernetes.github.io/ingress-nginx"
    repository_name = "ingress-nginx"
  }

  validation {
    condition     = can(var.release.name) && can(var.release.url) && can(var.release.repository_name)
    error_message = "The release map must contain 'name', 'url', and 'repository_name' keys."
  }
}
