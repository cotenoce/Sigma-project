data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "sigma-courses-terraform-state"
    key    = "option2/dev/us-east-1/vpc/terraform.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "asg_sg" {
  backend = "s3"
  config = {
    bucket = "sigma-courses-terraform-state"
    key    = "option2/dev/us-east-1/sg/terraform.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "alb" {
  backend = "s3"
  config = {
    bucket = "sigma-courses-terraform-state"
    key    = "option2/dev/us-east-1/alb/terraform.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "iam" {
  backend = "s3"
  config = {
    bucket = "sigma-courses-terraform-state"
    key    = "option2/dev/us-east-1/iam/terraform.tfstate"
    region = "us-east-1"
  }
}

locals {
  vpc_id                   = data.terraform_remote_state.vpc.outputs.vpc_id
  subnets                  = data.terraform_remote_state.vpc.outputs.subnets
  ami_id                   = data.terraform_remote_state.vpc.outputs.ami_id
  asg_sg_id                = data.terraform_remote_state.asg_sg.outputs.asg_sg_id
  target_group_arn         = data.terraform_remote_state.alb.outputs.target_group_arn
  ec2_instance_profile_arn = data.terraform_remote_state.iam.outputs.ec2_instance_profile_arn
}