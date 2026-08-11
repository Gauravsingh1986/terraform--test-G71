module "rg" {
  source = "../../moudles/rg"
  rgs=var.rego
}
module "storage" {
    depends_on=[module.rg]
  source = "../../moudles/storage"
  sts=var.rego
}