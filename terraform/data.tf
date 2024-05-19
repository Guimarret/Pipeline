data "aws_ecr_image" "lamdba_image" {
  repository_name = aws_ecr_repository.workflow_repository.name
  most_recent     = true
}