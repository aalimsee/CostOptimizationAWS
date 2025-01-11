resource "aws_budgets_budget" "monthly_budget" {
  name              = var.budget_name
  budget_type       = "COST"
  limit_amount      = var.budget_limit
  limit_unit        = "USD"
  time_unit         = "MONTHLY"

  notification {
    comparison_operator = "GREATER_THAN"
    notification_type   = "FORECASTED"
    threshold           = 90

    subscriber {
      subscription_type = "EMAIL"
      address           = var.notification_email
    }
  }
}

resource "aws_budgets_budget" "example" {
  name          = var.budget_name
  budget_type   = "COST"
  limit_amount  = var.budget_limit
  limit_unit    = "USD"
  time_unit     = "MONTHLY"

  notification {
    comparison_operator = "GREATER_THAN"
    notification_type   = "ACTUAL"
    threshold           = 80

    subscriber {
      subscription_type = "EMAIL"
      address           = var.notification_email
    }
  }
}
