# Variables for AWS Security Group

# Prefix for the Security Group name
variable "security_group_name_prefix" {
  description = "Prefix for the Security Group name"
  type        = string
}

# ID of the VPC to associate with the Security Group
variable "vpc_id" {
  description = "ID of the VPC to associate with the Security Group"
  type        = string
}
