# Outputs for ECS (Elastic Container Service) Resources

# ID of the created ECS cluster
output "ecs_cluster_id" {
  description = "ID of the created ECS cluster"
  value       = aws_ecs_cluster.my_cluster.id
}

# ID of the created ECS service
output "ecs_service_id" {
  description = "ID of the created ECS service"
  value       = aws_ecs_service.my_service.id
}
