provider "aws" {
  region = "ap-southeast-1"
}

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
