output "subnet_id" {
  description = "ID da subnet na AWS"
  value       = aws_subnet.subnet.id
}

output "security_group_id" {
  description = "ID da security group na AWS"
  value       = aws_security_group.security_group.id
}
