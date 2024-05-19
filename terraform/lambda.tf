resource "aws_lambda_function" "lambda_pipeline_workflow" {
  function_name = "lambda_pipeline_workflow"
  timeout       = 300
  image_uri     = data.aws_ecr_image.lamdba_image.image_uri
  package_type  = "Image"
  role          = aws_iam_role.lambda.arn
}