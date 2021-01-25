terraform {
  backend "remote" {
    organization = "superdaigo"
    workspaces {
      name = "tf_aws_iam_test"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
