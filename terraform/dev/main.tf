# Provider Configuration for AWS
provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = "ap-south-1"
}

# Module for VPC
module "vpc" {
  source                     = "/home/ec2-user/terraform/modules/vpc"
  availability_zones         = var.availability_zones
  public_subnet_cidr_blocks  = var.public_subnet_cidr_blocks
  private_subnet_cidr_blocks = var.private_subnet_cidr_blocks
  vpc_cidr_block             = var.vpc_cidr_block
  elastic_ip_allocation_id   = var.elastic_ip_allocation_id
}

# Module for Security Groups
module "security-group" {
  source                     = "/home/ec2-user/terraform/modules/security-groups"
  security_group_name_prefix = var.security_group_name_prefix
  vpc_id                     = module.vpc.vpc_id
}

# Module for Application Load Balancer (ALB)
module "alb" {
  source   = "/home/ec2-user/terraform/modules/alb"
  alb_name = var.alb_name
  subnets  = module.vpc.public_subnets
  vpc_id   = module.vpc.vpc_id
}

# Module for Elastic Container Registry (ECR)
module "ecr" {
  source                = "/home/ec2-user/terraform/modules/ecr"
  ecr_repository_name   = var.ecr_repository_name
}

# Module for Elastic Container Service (ECS)
module "ecs" {
  source              = "/home/ec2-user/terraform/modules/ecs"
  ecs_cluster_name    = var.ecs_cluster_name
  ecs_task_family     = var.ecs_task_family
  ecs_task_cpu        = var.ecs_task_cpu
  ecs_task_memory     = var.ecs_task_memory
  ecs_container_name  = var.ecs_container_name
  ecs_container_image = var.ecs_container_image
  ecs_service_name    = var.ecs_service_name
  security_group_id   = module.security-group.security_group_id
  private_subnets     = module.vpc.private_subnets
  public_subnets      = module.vpc.public_subnets
}
