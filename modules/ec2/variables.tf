variable "ami_id" {
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
}

variable "security_groups" {
  description = "List of security group IDs to associate with the instance"
  type        = list(any)
}

# variable key_name {
#     description = "Name of the EC2 key pair for SSH access"
#     type =string
#     default = "aws_key_pair.deployer.key_name"
# }

# variable public_key_location{
#     description = "Location of the public"
#     default = "/home/dikson/.ssh/id_rsa.pub"
# }

