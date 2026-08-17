# holden:ignore:HLD_TF_065
# holden:ignore:HLD_TF_026
module "helm" {
  source  = "../../"
  release = var.release
}
