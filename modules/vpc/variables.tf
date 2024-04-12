variable "vpc_cidr" {
  description = "The CIDR block of the VPC"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "The CIDR blocks of the public subnets"
  type        = list
}

variable "private_subnet_cidrs" {
  description = "The CIDR blocks of the private subnets"
  type        = list
}
