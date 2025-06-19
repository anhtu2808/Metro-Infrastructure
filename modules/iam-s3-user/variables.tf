variable "user_name" {
  description = "Tên IAM user cần tạo"
  type        = string
}

variable "bucket_arn" {
  description = "ARN của bucket cần cấp quyền"
  type        = string
} 