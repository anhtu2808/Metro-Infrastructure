output "role_name" {
  description = "Name of the IAM Role"
  value       = aws_iam_role.s3_uploader.name
}

output "role_arn" {
  description = "ARN of the IAM Role"
  value       = aws_iam_role.s3_uploader.arn
}
output "policy_arn" {
  description = "ARN of the IAM Policy"
  value = aws_iam_policy.s3_upload_policy.arn
}