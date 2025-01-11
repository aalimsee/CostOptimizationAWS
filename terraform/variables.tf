variable "instance_type" {
  default     = "t2.micro"
}

variable "ami_id" {
  default     = "ami-05576a079321f21f8"
}

variable "s3_bucket_name" {
  default     = "cost-optimization-reports"
}

variable "budget_name" {
  default     = "MonthlyCostBudget"
}

variable "budget_limit" {
  default     = 100.0
}

variable "notification_email" {
  default     = "aaron.limse@hotmail.com"
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "aalimsee-s3-bucket" # Provide a default value or leave it empty to require input
}
