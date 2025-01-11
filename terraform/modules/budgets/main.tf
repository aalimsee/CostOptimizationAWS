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

output "budget_id" {
  value = aws_budgets_budget.monthly_budget.id
}
