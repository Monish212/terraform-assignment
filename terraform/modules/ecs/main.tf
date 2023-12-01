# AWS ECS Cluster
resource "aws_ecs_cluster" "my_cluster" {
  # Name of the ECS cluster
  name = var.ecs_cluster_name
}

# AWS ECS Task Definition
resource "aws_ecs_task_definition" "my_task" {
  # Family name for the ECS task definition
  family                   = var.ecs_task_family
  
  # Network mode for the task
  network_mode             = "awsvpc"
  
  # Compatibility for Fargate
  requires_compatibilities = ["FARGATE"]
  
  # Execution role for ECS task
  execution_role_arn       = aws_iam_role.ecs_execution_role.arn
  
  # CPU and memory allocation for the task
  cpu                      = var.ecs_task_cpu
  memory                   = var.ecs_task_memory

  # Container Definitions in JSON format
  container_definitions = jsonencode([
    {
      name  = var.ecs_container_name
      image = var.ecs_container_image
    },
  ])
}

# AWS IAM Role for ECS Execution
resource "aws_iam_role" "ecs_execution_role" {
  # Name of the IAM role
  name = "ecs_execution_role"
  
  # Assume role policy for ECS tasks
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "ecs-tasks.amazonaws.com",
        },
      },
    ],
  })
}

# AWS ECS Service
resource "aws_ecs_service" "my_service" {
  # Name of the ECS service
  name            = var.ecs_service_name
  
  # ID of the ECS cluster
  cluster         = aws_ecs_cluster.my_cluster.id
  
  # ARN of the ECS task definition
  task_definition = aws_ecs_task_definition.my_task.arn
  
  # Launch type for the service
  launch_type     = "FARGATE"
  
  # Network configuration for the service
  network_configuration {
     subnets = local.subnet_ids
     security_groups = [local.security_group]
  }
}
