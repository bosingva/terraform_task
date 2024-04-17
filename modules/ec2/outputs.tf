output "instance_ids" {
  description = "IDs of the EC2 instances created by the module ec2"
  value       = aws_instance.test.id
}

output "instance_private_ips" {
  description = "Private IP addresses of the EC2 instances created by the module"
  value       = aws_instance.test.private_ip
}

output "instance_public_ips" {
  description = "Public IP addresses of the EC2 instances created by the module"
  value       = aws_instance.test.public_ip
}



