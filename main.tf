provider "aws" {
  region = "ap-southeast-1"
}

# --- S3 bucket modules ---
module "s3_user_avt" {
  source      = "./modules/s3"
  bucket_name = var.user_avt_bucket
}

module "s3_station_image" {
  source      = "./modules/s3"
  bucket_name = var.station_image_bucket
}

module "s3_content_image" {
  source      = "./modules/s3"
  bucket_name = var.content_image_bucket
}

# --- IAM role for each bucket (Lambda or EC2) ---
module "iam_s3_upload_useravt" {
  source          = "./modules/iam-s3-upload"
  role_name       = "metro-s3-upload-useravt"
  bucket_arn      = module.s3_user_avt.bucket_arn
  trusted_service = "lambda.amazonaws.com"
}

module "iam_s3_upload_station" {
  source          = "./modules/iam-s3-upload"
  role_name       = "metro-s3-upload-station"
  bucket_arn      = module.s3_station_image.bucket_arn
  trusted_service = "lambda.amazonaws.com"
}

module "iam_s3_upload_content" {
  source          = "./modules/iam-s3-upload"
  role_name       = "metro-s3-upload-content"
  bucket_arn      = module.s3_content_image.bucket_arn
  trusted_service = "lambda.amazonaws.com"
}
