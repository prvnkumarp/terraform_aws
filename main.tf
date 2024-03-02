provider "aws" {
  region = var.region
}


module "sns"{
  source = "./modules/sns"
  sns_topic_cloudwatch_alarm = "aws_budget_sns"
  email_address_budget = var.email
}

module "cloudwatch"{
  source = "./modules/cloudwatch/"
  budget_sns_topic_arn = module.sns.budget_sns_topic_arn
}