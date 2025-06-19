variable "user_avt_bucket" {
  default = "metro-user-avt-bucket"
}

variable "station_image_bucket" {
  default = "metro-station-image-bucket"
}

variable "content_image_bucket" {
  default = "metro-content-image-bucket"
}

variable "role_name" {
  description = "Tên của IAM role"
  type        = string
}

variable "bucket_arn" {
  description = "ARN của bucket cần cấp quyền truy cập"
  type        = string
}

variable "trusted_service" {
  description = "Dịch vụ AWS nào được quyền assume role này"
  type        = string
  default     = "lambda.amazonaws.com"
}
