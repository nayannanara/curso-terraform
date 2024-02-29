output "subnets_ids" {
  description = "ID da subnet na AWS"
  value       = aws_subnet.subnet[*].id
}
