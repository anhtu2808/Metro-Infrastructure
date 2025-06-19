output "role_name" {
  value = aws_iam_role.s3_uploader.name
}

output "role_arn" {
  value = aws_iam_role.s3_uploader.arn
}
