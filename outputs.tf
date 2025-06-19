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

# IAM Users
output "iam_user_useravt_arn" {
  description = "ARN of the IAM user for user avatar uploads"
  value       = module.iam_s3_user_useravt.user_arn
}

output "iam_user_station_arn" {
  description = "ARN of the IAM user for station image uploads"
  value       = module.iam_s3_user_station.user_arn
}

output "iam_user_content_arn" {
  description = "ARN of the IAM user for content image uploads"
  value       = module.iam_s3_user_content.user_arn
}

# Access Keys cho Spring Boot
output "useravt_access_key_id" {
  description = "Access Key ID for user avatar bucket"
  value       = module.iam_s3_user_useravt.access_key_id
}

output "useravt_secret_access_key" {
  description = "Secret Access Key for user avatar bucket"
  value       = module.iam_s3_user_useravt.secret_access_key
  sensitive   = true
}

output "station_access_key_id" {
  description = "Access Key ID for station image bucket"
  value       = module.iam_s3_user_station.access_key_id
}

output "station_secret_access_key" {
  description = "Secret Access Key for station image bucket"
  value       = module.iam_s3_user_station.secret_access_key
  sensitive   = true
}

output "content_access_key_id" {
  description = "Access Key ID for content image bucket"
  value       = module.iam_s3_user_content.access_key_id
}

output "content_secret_access_key" {
  description = "Secret Access Key for content image bucket"
  value       = module.iam_s3_user_content.secret_access_key
  sensitive   = true
}
