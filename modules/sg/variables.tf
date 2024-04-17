# variable "default_tags" {
#   description = "Default Tags for Auto Scaling Group"
#   type        = map(string)
#   default     = {}
# }

# variable "name_of_sg" {
#   description = "Name of the instance"
#   type        = string
#   default = ""
# }

# variable "description" {
#   type        = string
#   description = "Description of the security group"
#   default = ""
  
# }

variable "vpc_id" {
  type        = string
  description = "ID of the VPC to associate the security group with"
}

variable "ingress_rules" {
  type        = list(any)
  description = "List of ingress rules for the security group"
  default = []
}

variable "egress_rules" {
  type        = list(any)
  description = "List of egress rules for the security group"
  default = []
}
