output "vpc_id_default" {
  description = "ID da subnet na AWS"
  value       = aws_vpc.default.id
}

output "vpc_id_provider_1" {
  description = "ID da subnet na AWS"
  value       = aws_vpc.provider_1.id
}

output "vpc_id_provider_2" {
  description = "ID da subnet na AWS"
  value       = aws_vpc.provider_2.id
}
