resource "aws_sns_topic" "email_sns_topic" {
  name = var.sns_topic_cloudwatch_alarm
}

resource "aws_sns_topic_subscription" "user_updates_email_target" {
  topic_arn = aws_sns_topic.email_sns_topic.arn
  count = length(var.email_address_budget)
  protocol  = "email"
  endpoint  = var.email_address_budget[count.index]
}