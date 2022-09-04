variable "ENV" {}
variable "WORKSPATION_IP" {}

# RDS Variables
variable "RDS_MYSQL_PORT" {}
variable "RDS_MYSQL_CAPACITY" {}
variable "RDS_ENGINE_VERSION" {}
variable "RDS_INDTSNCE_TYPE" {}

# DocDB Variables 
variable "DOCDB_INSTACE_CLASS" {}
variable "DOCDB_INSTACE_COUNT" {} 
variable "DOCDB_PORT" {}

# RabbitMQ Variables
variable "RABBITMQ_PORT" {}
variable "RABBITMQ_INSTANCE_TYPE" {}

# Elasticache Variables
variable "ELASTICCCACHE_NODE_TYPE" {}
variable "ELASTICCCACHE_NODE_COUNT" {}
variable "ELASTICCCACHE_PORT" {}
variable "ELASTICCCACHE_ENGINE_VERSION" {}