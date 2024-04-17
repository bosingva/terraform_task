variable "tags" {
  description = "Default Tags for VPC"
  type        = map(string)
  default     = {}
}

variable "name_of_vpc" {
  description = "Name of the instance"
  type        = string
}

variable "name_of_ig" {
  description = "Name of the instance"
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block of the VPC"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "The CIDR blocks of the public subnets"
  type        = list(any)
}

variable "private_subnet_cidrs" {
  description = "The CIDR blocks of the private subnets"
  type        = list(any)
}
