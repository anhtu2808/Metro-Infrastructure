// outputs.tf at root

# S3 Buckets
output "user_avt_bucket_name" {
  description = "Name of the user avatar bucket"
  value       = module.s3_user_avt.bucket_name
}

output "station_image_bucket_name" {
  description = "Name of the station image bucket"
  value       = module.s3_station_image.bucket_name
}

output "content_image_bucket_name" {
  description = "Name of the content image bucket"
  value       = module.s3_content_image.bucket_name
}

# S3 ARNs
output "user_avt_bucket_arn" {
  description = "ARN of the user avatar bucket"
  value       = module.s3_user_avt.bucket_arn
}

output "station_image_bucket_arn" {
  description = "ARN of the station image bucket"
  value       = module.s3_station_image.bucket_arn
}

output "content_image_bucket_arn" {
  description = "ARN of the content image bucket"
  value       = module.s3_content_image.bucket_arn
}

# IAM Roles
output "iam_role_useravt_arn" {
  description = "ARN of the IAM role for user avatar uploads"
  value       = module.iam_s3_upload_useravt.role_arn
}

output "iam_role_station_arn" {
  description = "ARN of the IAM role for station image uploads"
  value       = module.iam_s3_upload_station.role_arn
}

output "iam_role_content_arn" {
  description = "ARN of the IAM role for content image uploads"
  value       = module.iam_s3_upload_content.role_arn
}
