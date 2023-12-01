# Variables for ECS Configuration

# Name of the ECS cluster
variable "ecs_cluster_name" {
  description = "Name of the ECS cluster"
}

# Family name for the ECS task definition
variable "ecs_task_family" {
  description = "Family name for the ECS task definition"
}

# CPU units for the ECS task
variable "ecs_task_cpu" {
  description = "CPU units for the ECS task"
}

# Memory for the ECS task
variable "ecs_task_memory" {
  description = "Memory for the ECS task"
}

# Name of the container
variable "ecs_container_name" {
  description = "Name of the container"
}

# Docker image for the container
variable "ecs_container_image" {
  description = "Docker image for the container"
}

# Name of the ECS service
variable "ecs_service_name" {
  description = "Name of the ECS service"
}

# IDs of public subnets
variable "public_subnets" {
  description = "IDs of public subnets"
  type        = list(string)
}

# IDs of private subnets
variable "private_subnets" {
  description = "IDs of private subnets"
  type        = list(string)
}

# ID of the security group
variable "security_group_id" {
  description = "ID of the security group"
  type        = string
}

# Locals Block
locals {
  # Aliasing private subnets to 'subnet_ids' for clarity
  subnet_ids     = var.private_subnets
  
  # Alias for security group ID for clarity
  security_group = var.security_group_id
}
