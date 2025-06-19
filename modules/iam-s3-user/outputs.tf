output "user_name" {
  description = "Tên IAM User vừa tạo"
  value       = aws_iam_user.s3_uploader.name
}

output "user_arn" {
  description = "ARN của IAM User vừa tạo"
  value       = aws_iam_user.s3_uploader.arn
}

output "access_key_id" {
  description = "Access Key ID cho Spring Boot"
  value       = aws_iam_access_key.s3_uploader_key.id
}

output "secret_access_key" {
  description = "Secret Access Key cho Spring Boot"
  value       = aws_iam_access_key.s3_uploader_key.secret
  sensitive   = true
} 