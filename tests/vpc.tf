terraform {
  required_providers {
    aws = {
        source  = "hashicorp/aws"
        version = "~> 3.0"
    }
  }
}
provider "aws" {
  region = "us-west-2"
  
}
module "vpc" {
    source = "../aws/vpc"
    vpc_cidr_block = "10.0.0.0/16"
    subnet_cidr_blocks = [ "10.0.0.0/24"]
    availability_zone = "us-west-2a"
    owner = "JOAO SIMOES - DUBLIN"
}
