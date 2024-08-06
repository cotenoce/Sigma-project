variable "aws_region" {
  default = "us-east-1"
}
locals {
  region = "us-east-1" 
  aws_account = "492457213144"
}

variable "env" { 
  default = "sigma"
}

variable "app_name" {
  default = "project"
}

variable "tags" {
  default = "sigma-project"
}
variable "rds" {
  default = "rds"
}