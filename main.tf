module "vpc" {
  source = "https://github.com/janardhanReddy-B/tf-module-vpc.git"
  ENV = var.ENV
  PROJECT = var.PROJECT
  VPC_CIDR = var.VPC_CIDR
}
