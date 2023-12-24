provider "aws" {
  region  = "ap-south-1"
  profile = "terraform-resourcer"

}

module "aws_infra" {
  source   = "./modules/aws_infra"
  for_each = toset(var.az_list)
  az_name  = each.value
}

