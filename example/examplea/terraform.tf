# holden:ignore:HLD_TF_004
terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "3.1.1"
    }
  }
  required_version = ">=1.5.0"
}
