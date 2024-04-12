terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"

  default_tags {
    tags = {
      env   = var.env
      owner = var.owner
    }
  }
}

module "vpc" {
  source               = "./modules/vpc"
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
}

module "sg" {
  source        = "./modules/sg"
  vpc_id        = module.vpc.vpc_id
  name          = var.name
  description   = var.description
  ingress_rules = var.ingress_rules
  egress_rules  = var.egress_rules
}
