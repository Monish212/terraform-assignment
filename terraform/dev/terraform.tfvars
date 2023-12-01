# AWS Credentials
aws_access_key     = ""
aws_secret_key     = ""

# VPC Configuration
vpc_name            = "my-vpc"
vpc_cidr_block      = "10.0.0.0/16"
availability_zones  = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]

# Subnet Configuration
public_subnet_cidr_blocks  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
private_subnet_cidr_blocks = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
subnets                    = ["subnet-12345678", "subnet-87654321"]
vpc_id                     = "vpc-abcdef1234567890"

# Security Group Configuration
security_group_name_prefix = "my-alb-sg"

# ALB Configuration
alb_name = "my-alb"

# ECR Configuration
ecr_repository_name = "my-container-repo"

# ECS Configuration
ecs_cluster_name    = "my-ecs-cluster"
ecs_task_family     = "my-task-family"
ecs_task_cpu        = 256
ecs_task_memory     = 512
ecs_container_name  = "my-container"
ecs_container_image = "my-docker-image:latest"
ecs_service_name    = "my-service"
