provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      Application = "Sigma Course"
    }
  }
}

terraform {
  required_version = ">= 1.7.0"
  backend "s3" {
    bucket         = "sigma-courses-terraform-state"
    key            = "option2/dev/us-east-1/rds/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "sigma-courses-terraform-lock"

  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.39.1"
    }
  }
}
