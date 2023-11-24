# Output for ECR Repository URL

output "ecr_repository_url" {
  # Description of the output
  description = "URL of the ECR repository"
  
  # Value to be displayed as output
  value       = aws_ecr_repository.my_ecr_repo.repository_url
}
