resource "aws_instance" "test" {
  ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  associate_public_ip_address = var.associate_public_ip_address
  vpc_security_group_ids      = var.vpc_security_group_ids

  tags = merge({ "Name" = var.name_of_instance }, var.tags)

}
