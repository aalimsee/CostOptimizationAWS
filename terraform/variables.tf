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
