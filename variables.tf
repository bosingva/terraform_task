variable "owner" {
  type  = string
  Owner = "VRTX"
}

variable "env" {
  type    = string
  default = "Dev"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  type = list(any)
  default = [
    "10.0.1.0/24",
    "10.0.2.0/24",
    "10.0.3.0/24"
  ]
}

variable "private_subnet_cidrs" {
  type = list(any)
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