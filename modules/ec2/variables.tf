variable "tags" {
  description = "Default Tags for Auto Scaling Group"
  type        = map(string)
  default     = {}
}

variable "name_of_instance" {
  description = "Name of the instance"
  type        = string
}



variable "ami" {
  description = "ID of AMI for the instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type (e.g., t2.micro, m5.large)"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID in which instance should be created"
  type        = string
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP address with the instance"
  type        = bool
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs to associate with the instance"
  type        = list(any)
}


