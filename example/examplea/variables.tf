variable "release" {
  type        = map(any)
  description = "Helm chart and url details"
  default = {
    name            = "rabbitmq"
    url             = "https://charts.bitnami.com/bitnami"
    repository_name = "bitami"
  }
}
