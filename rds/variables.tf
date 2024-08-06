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
variable "db_name" {
  default = "sigma"
}
variable "db_username" {
  default = "sigma"
}
locals {
  asg_sg_id = "sg-06e726890f73c2542"
}