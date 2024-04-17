variable "default_tags" {
  description = "Default Tags for Auto Scaling Group"
  type        = map(string)
  default     = {}
}

variable "name_of_vpc" {
  description = "Name of the instance"
  type        = string
  default     = ""
}

variable "name_of_ig" {
  description = "Name of the instance"
  type        = string
  default     = ""
}

variable "vpc_cidr" {
  description = "The CIDR block of the VPC"
  type        = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "The CIDR blocks of the public subnets"
  type        = list(any)
  default = []
}

variable "private_subnet_cidrs" {
  description = "The CIDR blocks of the private subnets"
  type        = list(any)
  default = []
}
