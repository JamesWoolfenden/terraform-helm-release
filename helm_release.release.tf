resource "helm_release" "release" {
  name       = var.release["name"]
  repository = var.release["url"]
  chart      = local.chart
}

locals {
  chart = "${var.release["repository_name"]}/${var.release["name"]}"
}
