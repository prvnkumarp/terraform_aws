
resource "aws_cloudwatch_metric_alarm" "budget_alarm" {
  alarm_name                = "budget_alarm"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = 1
  metric_name               = "Estimated_charges"
  namespace                 = "AWS/Billing"
  period                    = 300
  statistic                 = "Maximum"
  threshold                 = 5
  alarm_description         = "This metric monitors cost utilization for aws account"
  insufficient_data_actions = []

  alarm_actions = [var.budget_sns_topic_arn]
}