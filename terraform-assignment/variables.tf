# AWS Credentials
variable "aws_access_key" {
  description = "AWS Access Key"
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
}

# VPC Configuration
variable "vpc_name" {
  description = "Name for the VPC"
  type        = string
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "availability_zones" {
  description = "A list of availability zones for creating subnets."
  type        = list(string)
}

variable "public_subnet_cidr_blocks" {
  description = "CIDR blocks for public subnets."
  type        = list(string)
}

variable "private_subnet_cidr_blocks" {
  description = "CIDR blocks for private subnets."
  type        = list(string)
}

variable "subnets" {
  description = "Subnets to associate with the ALB"
  type        = list(string)
}

variable "vpc_id" {
  description = "ID of the VPC where the ALB will be created"
  type        = string
}

# Security Group Configuration
variable "security_group_name_prefix" {
  description = "Prefix for the Security Group name"
  type        = string
}

# ALB Configuration
variable "alb_name" {
  description = "Name for the Application Load Balancer"
  type        = string
}

# ECR Configuration
variable "ecr_repository_name" {
  description = "Name for the ECR repository"
  type        = string
}

# ECS Configuration
variable "ecs_cluster_name" {
  description = "Name of the ECS cluster"
}

variable "ecs_task_family" {
  description = "Family name for the ECS task definition"
}

variable "ecs_task_cpu" {
  description = "CPU units for the ECS task"
}

variable "ecs_task_memory" {
  description = "Memory for the ECS task"
}

variable "ecs_container_name" {
  description = "Name of the container"
}

variable "ecs_container_image" {
  description = "Docker image for the container"
}

variable "ecs_service_name" {
  description = "Name of the ECS service"
}

# Elastic IP Configuration
variable "elastic_ip_allocation_id" {
  description = "The allocation ID of the Elastic IP for the NAT Gateway"
  type        = string
}
