output "role_name" {
  description = "Tên IAM Role vừa tạo"
  value       = aws_iam_role.s3_uploader.name
}

output "role_arn" {
  description = "ARN của IAM Role vừa tạo"
  value       = aws_iam_role.s3_uploader.arn
}
