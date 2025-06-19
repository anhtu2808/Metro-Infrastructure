variable "role_name" {
  description = "Tên role IAM cần tạo"
  type        = string
}

variable "trusted_service" {
  description = "Service sẽ assume role này (EC2, Lambda, ...)"
  type        = string
  default     = "lambda.amazonaws.com"
}

variable "bucket_arn" {
  description = "ARN của bucket cần cấp quyền"
  type        = string
}
