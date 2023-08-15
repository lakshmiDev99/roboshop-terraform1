module "components" {
  source   = "https://github.com/lakshmiDev99/tf-module-test1.git"
  for_each = var.components

  zone_id             = var.zone_id
  security_groups     = var.security_groups
  name                = each.value["name"]
  instance_type       = each.value["instance_type"]
}