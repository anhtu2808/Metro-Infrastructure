# modules/iam-s3-user/main.tf

resource "aws_iam_user" "s3_uploader" {
  name = var.user_name
  path = "/applications/"

  tags = {
    Name        = var.user_name
    Purpose     = "S3 upload for Spring Boot application"
    Application = "Metro System"
  }
}

resource "aws_iam_policy" "s3_upload_policy" {
  name        = "${var.user_name}-s3-policy"
  description = "Policy for S3 upload access"
  
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect   = "Allow"
      Action   = [
        "s3:PutObject",
        "s3:GetObject",
        "s3:DeleteObject",
        "s3:ListBucket"
      ]
      Resource = [
        var.bucket_arn,
        "${var.bucket_arn}/*"
      ]
    }]
  })
}

resource "aws_iam_user_policy_attachment" "attach_policy" {
  user       = aws_iam_user.s3_uploader.name
  policy_arn = aws_iam_policy.s3_upload_policy.arn
}

resource "aws_iam_access_key" "s3_uploader_key" {
  user = aws_iam_user.s3_uploader.name
} 