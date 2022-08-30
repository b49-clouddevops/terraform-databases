# module "vpc" {
#   source = "git::https://github.com/b49-clouddevops/tf-module-vpc.git?ref=main"
# }

module "vpc" {
  source           = "./vendor/modules/vpc"
  VPC_CIDR         = var.VPC_CIDR
  ENV              = var.ENV
  AZ               = var.AZ
  DEFAULT_VPC_ID   = var.DEFAULT_VPC_ID
  DEFAULT_VPC_CIDR = var.DEFAULT_VPC_CIDR
  DEFAULT_VPC_RT   = var.DEFAULT_VPC_RT
  PUBLIC_SUBNET_CIDR  = var.PUBLIC_SUBNET_CIDR
  PRIVATE_SUBNET_CIDR = var.PRIVATE_SUBNET_CIDR
}

# You cannot parameterise the source section of the terraform module : Branc name cannot be parameterised. 
# That's the challenge with terraform : Terrafile from coretech

