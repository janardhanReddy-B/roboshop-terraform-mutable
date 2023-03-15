module "vpc" {
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
