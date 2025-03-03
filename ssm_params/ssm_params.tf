###
### AWS Systems Manager Parameters
###

resource "aws_ssm_parameter" "alb_dns" {
  name        = "/${var.env}/alb-${var.app_name}/dns"
  description = "Database name"
  type        = "SecureString"
  value       = local.alb_dns_name

  tags = {
    Name = "${var.ssm}-${var.app_name}"
  }
}

resource "aws_ssm_parameter" "db_name" {
  name        = "/${var.env}/db-${var.app_name}/name"
  description = "Database name"
  type        = "SecureString"
  value       = var.db_name

  tags = {
    Name = "${var.ssm}-${var.app_name}"
  }
}

resource "aws_ssm_parameter" "db_username" {
  name        = "/${var.env}/db-${var.app_name}/username"
  description = "Database password"
  type        = "SecureString"
  value       = var.db_username

  tags = {
    Name = "${var.ssm}-${var.app_name}"
  }
}

resource "aws_ssm_parameter" "db_url" {
  name        = "/${var.env}/db-${var.app_name}/url"
  description = "Database address"
  type        = "SecureString"
  value       = local.rds_address

  tags = {
    Name = "${var.ssm}-${var.app_name}"
  }
}

resource "aws_ssm_parameter" "db_password" {
  name        = "/${var.env}/db-${var.app_name}/password"
  description = "Database password"
  type        = "SecureString"
  value       = random_password.db.result

  tags = {
    Name = "${var.ssm}-${var.app_name}"
  }
}

resource "random_password" "db" {
  length           = 16
  numeric          = true
  upper            = true
  lower            = true
  special          = true
  override_special = "!#&*"
}
