# iam_users.tf

module "aws_iam_users" {
  source   = "terraform-aws-modules/iam/aws//modules/iam-user"
  version  = "~> 3.0"
  for_each = var.iam_users
  
  name                          = each.key
  path                          = "/"
  force_destroy                 = true
  create_iam_access_key         = false
  create_iam_user_login_profile = false
}

# User policy attachment
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy_attachment

# module "aws_iam_system_users" {
#   source   = "terraform-aws-modules/iam/aws//modules/iam-user"
#   version  = "~> 3.0"
#   for_each = var.iam_system_users
# 
#   name                          = each.key
#   path                          = "/system/"
#   force_destroy                 = true
#   create_iam_access_key         = false
#   create_iam_user_login_profile = false
# }

# IAM group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_membership

# IAM role
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy_attachment

# Instance profile
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile