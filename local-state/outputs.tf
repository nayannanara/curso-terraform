output "bucket_id" {
  description = "ID da do bucket na AWS"
  value       = aws_s3_bucket.bucket.id
}

output "bucket_arn" {
  description = "arb da bucket na aws"
  value       = aws_s3_bucket.bucket.arn
}
