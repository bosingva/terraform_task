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

module "new_ec2" {
  source                      = "./modules/ec2"
  for_each                    = var.instances
  ami_id                      = each.value["ami"]
  instance_type               = each.value["instance_type"]
  subnet_id                   = module.vpc.public_subnet_ids[0]
  associate_public_ip_address = var.associate_public_ip_address
  security_groups             = [module.sg.sg_id]
}
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}


data "aws_ami" "latest_amazon_linux" {
  owners      = ["amazon"]
  most_recent = true
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

