variable "aws_region" {
  default = "us-east-1"
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
variable "asg_ec2_instance_type" {
  default = "t2.micro"
}
# variable "asg_ec2_instance_type" {
#   default = "t2.micro"
# }

# locals {
#   asg_sg_id = "sg-0ae736216b03c376d"
# }