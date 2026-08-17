variable "release" {
  type        = map(any)
  description = "Helm chart and url details"
  default = {
    name            = "rabbitmq"
    url             = "https://charts.bitnami.com/bitnami"
    repository_name = "bitami"
  }

  validation {
    condition     = can(var.release.name) && can(var.release.url) && can(var.release.repository_name)
    error_message = "The release map must contain 'name', 'url', and 'repository_name' keys."
  }
}
