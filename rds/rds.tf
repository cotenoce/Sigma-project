###
### RDS MySQL
###

resource "aws_db_subnet_group" "db" {
  name       = "${var.env}-${var.app_name}-subnet-group"
  subnet_ids = local.subnets

  tags = {
    Name = "rds-${var.app_name}" 
  }
}

resource "aws_db_instance" "db" {
  identifier           = "${var.env}-${var.app_name}-db"
  db_subnet_group_name = aws_db_subnet_group.db.id
  publicly_accessible  = true

  allocated_storage   = 20
  db_name             = "wordpress"
  engine              = "mariadb"
  engine_version      = "10.11.6"
  instance_class      = "db.t3.micro"
  username            = "admin"
  password            = "admin123"
  skip_final_snapshot = true

  vpc_security_group_ids = [local.asg_sg_id]

  lifecycle {
    ignore_changes = [
      password
    ]
  }

  tags = {
    Name = "rds-${var.app_name}" 
  }
}
