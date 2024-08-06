data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "sigma-courses-terraform-state"
    key    = "option2/dev/us-east-1/vpc/terraform.tfstate"
    region = "us-east-1"
  }
}

locals {
  vpc_id  = data.terraform_remote_state.vpc.outputs.vpc_id
  subnets = data.terraform_remote_state.vpc.outputs.subnets
}