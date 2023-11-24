# AWS Security Group

resource "aws_security_group" "my_security_group" {
  # Prefix for the name of the security group
  name_prefix = var.security_group_name_prefix
  
  # ID of the VPC where the security group will be created
  vpc_id      = var.vpc_id
}
