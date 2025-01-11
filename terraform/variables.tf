variable "instance_type" {
  default     = "t3.micro"
}

variable "ami_id" {
  default     = "ami-0c02fb55956c7d316"
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
  default     = "example@example.com"
}
