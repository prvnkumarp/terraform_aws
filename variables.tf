variable "region" {
  type        = string
  description = "AWS region for all resources."
  default = "us-east-1"
}

variable "project_name" {
  type        = string
  description = "terraform_aws used to create resources in prvnkumarp aws account"
  default = "terraform-aws"
}

variable "email" {
  type = list(string)
}