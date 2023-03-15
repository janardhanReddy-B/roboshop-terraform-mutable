module "VPC" {
  source = "github.com/janardhanReddy-B/tf-module-vpc.git"
  ENV = var.ENV
  PROJECT = var.PROJECT
  VPC_CIDR = var.VPC_CIDR
  AZ = var.AZ
  PUBLIC_SUBNETS_CIDR = var.PUBLIC_SUBNETS_CIDR
  PRIVATE_SUBNETS_CIDR = var.PRIVATE_SUBNETS_CIDR
  DEFAULT_VPC = var.DEFAULT_VPC
  DEFAULT_VPC_RT = var.DEFAULT_VPC_RT
  DEFAULT_VPC_CIDR = var.DEFAULT_VPC_CIDR
}

module "RDS" {
  source = "github.com/janardhanReddy-B/tf-module-rds.git"
  ENGINE = var.RDS_ENGINE
  ENGINE_VERSION = var.RDS_ENGINE_VERSION
  RDS_INSTANCE_CLASS = var.RDS_INSTANCE_CLASS
  PG_FAMILY = var.RDS_PG_FAMILY
  RDS_PORT = var.RDS_PORT
  ALLOW_SG_CIDR = module.VPC.PRIVATE_CIDR_CIDR
  PRIVATE_SUBNET_IDS = module.VPC.PRIVATE_SUBNET_IDS
  VPC_ID             = module.VPC.VPC_ID
  ENV = var.ENV
  PROJECT = var.PROJECT

}