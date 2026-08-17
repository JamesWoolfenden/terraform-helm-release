variable "release" {
  type        = map(any)
  description = "Helm chart and url details"

  validation {
    condition     = length(var.release) > 0
    error_message = "Release map cannot be empty."
  }
}
