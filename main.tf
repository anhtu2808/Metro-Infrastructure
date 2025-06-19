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

# --- IAM users for Spring Boot S3 upload ---
module "iam_s3_user_useravt" {
  source     = "./modules/iam-s3-user"
  user_name  = "metro-s3-user-useravt"
  bucket_arn = module.s3_user_avt.bucket_arn
}

module "iam_s3_user_station" {
  source     = "./modules/iam-s3-user"
  user_name  = "metro-s3-user-station"
  bucket_arn = module.s3_station_image.bucket_arn
}

module "iam_s3_user_content" {
  source     = "./modules/iam-s3-user"
  user_name  = "metro-s3-user-content"
  bucket_arn = module.s3_content_image.bucket_arn
}
