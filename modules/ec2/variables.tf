# variable "default_tags" {
#   description = "Default Tags for Auto Scaling Group"
#   type        = map(string)
#   default     = {}
# }

# variable "name_of_instance" {
#   description = "Name of the instance"
#   type        = string
#   default     = ""
# }



variable "ami" {
  description = "ID of AMI for the instance"
  type        = string
  default     = ""
}

variable "instance_type" {
  description = "Instance type (e.g., t2.micro, m5.large)"
  type        = string
  default     = ""
}

variable "subnet_id" {
  description = "Subnet ID in which instance should be created"
  type        = string
  default     = ""
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP address with the instance"
  type        = bool
  default     = true
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs to associate with the instance"
  type        = list(any)
}


