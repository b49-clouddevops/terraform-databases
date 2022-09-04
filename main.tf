# module "vpc" {
#   source = "git::https://github.com/b49-clouddevops/tf-module-vpc.git?ref=main"
# }

module "mongodb" {
  source           = "./vendor/modules/mongodb"
  ENV              = var.ENV
  WORKSPATION_IP   = var.WORKSPATION_IP
  DOCDB_PORT       = var.DOCDB_PORT 
  DOCDB_INSTACE_CLASS = var.DOCDB_INSTACE_CLASS
  DOCDB_INSTACE_COUNT = var.DOCDB_INSTACE_COUNT
}

module "redis" {
  source           = "./vendor/modules/redis"
  ENV              = var.ENV
  ELASTICCCACHE_NODE_TYPE      = var.ELASTICCCACHE_NODE_TYPE 
  ELASTICCCACHE_NODE_COUNT     = var.ELASTICCCACHE_NODE_COUNT 
  ELASTICCCACHE_PORT           = var.ELASTICCCACHE_PORT
  ELASTICCCACHE_ENGINE_VERSION = var.ELASTICCCACHE_ENGINE_VERSION
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
  RABBITMQ_PORT    = var.RABBITMQ_PORT 
  RABBITMQ_INSTANCE_TYPE = var.RABBITMQ_INSTANCE_TYPE

}

# You cannot parameterise the source section of the terraform module : Branc name cannot be parameterised. 
# That's the challenge with terraform : Terrafile from coretech
