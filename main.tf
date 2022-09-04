# module "vpc" {
#   source = "git::https://github.com/b49-clouddevops/tf-module-vpc.git?ref=main"
# }

module "mongodb" {
  source           = "./vendor/modules/mongodb"
  ENV              = var.ENV
  WORKSPATION_IP   = var.WORKSPATION_IP
}

module "redis" {
  source           = "./vendor/modules/redis"
  ENV              = var.ENV
}

module "mysql" {
  source           = "./vendor/modules/mysql"
  ENV              = var.ENV
  WORKSPATION_IP   = var.WORKSPATION_IP
  RDS_MYSQL_PORT   = var.RDS_MYSQL_PORT 
  RDS_MYSQL_CAPACITY = var.RDS_MYSQL_CAPACITY 
  RDS_ENGINE_VERSION = var.RDS_ENGINE_VERSION 
  RDS_INDTSNCE_TYPE  = var.RDS_INDTSNCE_TYPE

}

module "rabbitmq" {
  source           = "./vendor/modules/rabbitmq"
  ENV              = var.ENV
  WORKSPATION_IP   = var.WORKSPATION_IP
}


# You cannot parameterise the source section of the terraform module : Branc name cannot be parameterised. 
# That's the challenge with terraform : Terrafile from coretech

output "redis" {
    value = module.redis.redis
}

variable "RDS_MYSQL_PORT" {}
variable "RDS_MYSQL_CAPACITY" {}
variable "RDS_ENGINE_VERSION" {}
variable "RDS_INDTSNCE_TYPE" {}