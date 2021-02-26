terraform {
  required_providers {
    helm = {
      version = "2.0.2"
      source  = "hashicorp/helm"
    }
  }
  required_version = ">= 0.14"
}
