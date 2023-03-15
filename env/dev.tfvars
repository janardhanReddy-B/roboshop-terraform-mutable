PROJECT = "roboshop"
VPC_CIDR = "10.50.0.0/16"
ENV = "dev"

PUBLIC_SUBNETS_CIDR  = ["10.50.0.0/24", "10.50.1.0/24"]
PRIVATE_SUBNETS_CIDR = ["10.50.2.0/24", "10.50.3.0/24"]
AZ = ["us-east-1b", "us-east-1c"]

DEFAULT_VPC = "vpc-033afb10db1e6a9da"
DEFAULT_VPC_CIDR = "172.31.0.0/16"
DEFAULT_VPC_RT = "rtb-0ba2f25e4527ec7d1"
