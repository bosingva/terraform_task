output "sg_id" {
  description = "ID of Security group"
  value       = aws_security_group.new_sg.id
}