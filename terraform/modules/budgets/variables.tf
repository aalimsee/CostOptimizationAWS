variable "budget_name" {
  description = "The name of the budget"
  type        = string
}

variable "budget_limit" {
  description = "The limit for the budget in USD"
  type        = number
}

variable "notification_email" {
  description = "Email address for budget notifications"
  type        = string
}
