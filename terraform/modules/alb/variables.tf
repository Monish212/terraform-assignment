# Variables for AWS Application Load Balancer (ALB) Configuration

# Name for the Application Load Balancer
variable "alb_name" {
  description = "Name for the Application Load Balancer"
  type        = string
}

# List of subnets where the ALB should be placed
variable "subnets" {
  description = "List of subnets where the ALB should be placed"
  type        = list(string)
}

# ID of the VPC where the ALB will be deployed
variable "vpc_id" {
  description = "ID of the VPC where the ALB will be deployed"
  type        = string
}

# Prefix for the security group name
variable "security_group_name_prefix" {
  description = "Prefix for the security group name"
  type        = string
  default     = "my-security-group"  # You can set a default value or change it as needed
}
