terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "vpc" {
  source               = "./modules/vpc"
  name_of_ig           = "test_ig"
  name_of_vpc          = "test_vpc"
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  tags                 = var.tags
}

module "sg" {
  source        = "./modules/sg"
  name_of_sg    = "test_Sg"
  vpc_id        = module.vpc.vpc_id
  description   = var.description
  ingress_rules = var.ingress_rules
  egress_rules  = var.egress_rules
  tags          = var.tags
}

module "new_ec2" {
  source   = "./modules/ec2"
  for_each = var.instances

  name_of_instance            = each.value["instance"]
  ami                         = each.value["ami"]
  instance_type               = each.value["instance_type"]
  subnet_id                   = module.vpc.public_subnet_ids[0]
  associate_public_ip_address = false
  vpc_security_group_ids      = [module.sg.sg_id]
  tags                        = var.tags
}
