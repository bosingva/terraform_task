variable "region" {
  description = "Region where do deploy infrastructure"
  default     = "eu-central-1"

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

variable "description" {
  description = "Description of the security group"
}


variable "ingress_rules" {
  description = "List of ingress rules for the security group"
}

variable "egress_rules" {
  description = "List of egress rules for the security group"
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP address with the instance"
  type        = bool
}

variable "instances" {
  type = map(any)
}

variable "tags" {
  description = "Default Tags for SG"
  type        = map(string)
}


