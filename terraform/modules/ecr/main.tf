# AWS Elastic Container Registry (ECR) Repository

resource "aws_ecr_repository" "my_ecr_repo" {
  # Name of the ECR repository
  name = var.ecr_repository_name
}
