resource "aws_security_group" "new_sg" {
  name = var.name_of_sg
  description = var.description
  vpc_id      = var.vpc_id

  tags = merge(
    var.default_tags,
    {
      Name = var.name_of_sg
    }
  )

}




resource "aws_security_group_rule" "ingress" {
  count = length(var.ingress_rules)
  type  = "ingress"

  security_group_id = aws_security_group.new_sg.id

  from_port   = var.ingress_rules[count.index].from_port
  to_port     = var.ingress_rules[count.index].to_port
  protocol    = var.ingress_rules[count.index].protocol
  cidr_blocks = var.ingress_rules[count.index].cidr_blocks
}

resource "aws_security_group_rule" "egress" {
  count = length(var.egress_rules)
  type  = "egress"

  security_group_id = aws_security_group.new_sg.id

  from_port   = var.egress_rules[count.index].from_port
  to_port     = var.egress_rules[count.index].to_port
  protocol    = var.egress_rules[count.index].protocol
  cidr_blocks = var.egress_rules[count.index].cidr_blocks
}

variable "default_tags" {
  description = "Default Tags for Auto Scaling Group"
  type        = map(string)
  default     = {
    Environment = "Test"
    Owner       = "VERTEX"
    Project     = "Workload in Europe"
  }
}

variable "name_of_sg" {
  description = "Name of the instance"
  type        = string
  default = "Reusable"
}



variable "description" {
  type        = string
  description = "Description of the security group"
  default = "With SSH and HTTP port opened"
}