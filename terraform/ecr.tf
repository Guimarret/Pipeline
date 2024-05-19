resource "aws_ecr_repository" "workflow_repository" {
  name                 = "lambda_workflow_repo"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
}