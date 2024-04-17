resource "aws_instance" "test" {
  ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  associate_public_ip_address = var.associate_public_ip_address
  vpc_security_group_ids      = var.vpc_security_group_ids

  tags = merge(
    var.default_tags,
    {
      Name = var.name_of_instance
    }
  )
}


variable "default_tags" {
  description = "Default Tags for Auto Scaling Group"
  type        = map(string)
  default = {
    Environment = "Test"
    Owner       = "VERTEX"
    Project     = "Workload in Europe"
  }
}

variable "name_of_instance" {
  description = "Name of the instance"
  type        = string
  default     = "With default options"
}