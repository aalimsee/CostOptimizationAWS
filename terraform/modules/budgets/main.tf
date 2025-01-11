resource "aws_budgets_budget" "monthly_budget" {
  name          = var.budget_name
  budget_type   = "COST"
  limit_amount  = var.budget_limit
  limit_unit    = "USD"
  time_unit     = "MONTHLY"

  notification {
    comparison_operator = "GREATER_THAN"
    notification_type   = "ACTUAL"
    threshold           = 80
    threshold_type      = "PERCENTAGE"
  }
}

resource "aws_budgets_budget_notification" "budget_notification" {
  budget_name = aws_budgets_budget.monthly_budget.name
  comparison_operator = "GREATER_THAN"
  threshold           = 80
  threshold_type      = "PERCENTAGE"
  notification_type   = "ACTUAL"

  subscriber {
    subscription_type = "EMAIL"
    address           = var.notification_email
  }
}
