resource "helm_release" "this" {
  name       = var.release["name"]
  repository = var.release["url"]
  chart      = local.chart
}
