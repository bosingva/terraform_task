resource "aws_security_group" "new_sg" {
  name = var.name_of_sg
  description = var.description
  vpc_id      = var.vpc_id

  tags = var.tags
    
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

