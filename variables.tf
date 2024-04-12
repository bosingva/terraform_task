variable "owner" {
  type    = string
  default = "VRTX"
}

variable "env" {
  type    = string
  default = "Dev"
}

variable "vpc_cidr" {
  description = "The CIDR block of the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "The CIDR blocks of the public subnets"
  type        = list(any)
  default = [
    "10.0.1.0/24",
    "10.0.2.0/24",
    "10.0.3.0/24"
  ]
}

variable "private_subnet_cidrs" {
  description = "The CIDR blocks of the private subnets"
  type        = list(any)
  default = [
    "10.0.11.0/24",
    "10.0.22.0/24",
    "10.0.33.0/24"
  ]
}

variable "name" {
  description = "Name of the security group"
  default     = "New-SG"
}

variable "description" {
  description = "Description of the security group"
  default     = "For testing"
}


variable "ingress_rules" {
  description = "List of ingress rules for the security group"
  default = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}

variable "egress_rules" {
  description = "List of egress rules for the security group"
  default     = []
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP address with the instance"
  type        = bool
  default     = "true"
}

variable "instances" {
  type = map(any)
  default = {
    "instance1" = {
      instance_type = "t2.micro"
      ami           = "ami-026c3177c9bd54288"
      subnet_id     = "module.vpc.public_subnet_ids[0]"
    }
    "instance2" = {
      instance_type = "t2.medium"
      ami           = "ami-026c3177c9bd54288"
      subnet_id     = "module.vpc.public_subnet_ids[1]"
    }
  }
}