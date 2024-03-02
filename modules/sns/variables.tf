variable "sns_topic_cloudwatch_alarm" {
  type  = string
  description = "sns topic to be used for budget thresholds"
}

variable "email_address_budget"{
  type = list(string)
  description = "added email will get email alerts if the budget goes over the threshold"
}