variable "vpc_id" {
  type        = string
  description = "ID of the VPC to associate the security group with"
}

variable "name" {
  type        = string
  description = "Name of the security group"
}

variable "description" {
  type        = string
  description = "Description of the security group"
}

variable "ingress_rules" {
  type        = list(any)
  description = "List of ingress rules for the security group"
}

variable "egress_rules" {
  type        = list(any)
  description = "List of egress rules for the security group"
}
