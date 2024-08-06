output "asg_sg_id" {
  value = aws_security_group.allow_all.id
}

output "alb_sg_id" {
  value = aws_security_group.alb.id
}

output "db_sg_id" {
  value = aws_security_group.db.id
}

# output "ec2_instance_profile_arn" {
#   value = aws_iam_instance_profile.app.arn
# }