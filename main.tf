# module "vpc" {
#   source = "git::https://github.com/b49-clouddevops/tf-module-vpc.git?ref=main"
# }

module "mongodb" {
  source           = "./vendor/modules/mongodb"
  ENV              = var.ENV
}

module "redis" {
  source           = "./vendor/modules/redis"
  ENV              = var.ENV
}

# You cannot parameterise the source section of the terraform module : Branc name cannot be parameterised. 
# That's the challenge with terraform : Terrafile from coretech

