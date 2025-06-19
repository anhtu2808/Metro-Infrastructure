# modules/s3/main.tf

resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name

  tags = {
    Name    = var.bucket_name
    Purpose = "Upload images"
  }
}

resource "aws_s3_bucket_cors_configuration" "this" {
  bucket = aws_s3_bucket.this.id

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["GET", "PUT", "POST"]
    allowed_origins = ["*"]
    expose_headers  = ["ETag"]
    max_age_seconds = 3000
  }
}
