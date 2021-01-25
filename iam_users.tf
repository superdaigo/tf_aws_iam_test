# iam_users.tf

module "aws_iam_users" {
  source   = "terraform-aws-modules/iam/aws//modules/iam-user"
  version  = "~> 3.0"
  for_each = var.iam_users

  name          = each.key
  path          = "/"
  force_destroy = true
}

# module "aws_iam_system_users" {
#   source   = "terraform-aws-modules/iam/aws//modules/iam-user"
#   version  = "~> 3.0"
#   for_each = var.iam_system_users
# 
#   name          = each.key
#   path          = "/system/"
#   force_destroy = true
# }
