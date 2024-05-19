resource "aws_iam_role" "lambda" {
  name = "lambda_main_role_workflow"
  assume_role_policy = file("permissions/basic_lambda_role.json")
}

resource "aws_iam_policy" "policy" {
  name        = "lambda_policy_workflow"
  description = "Basic overall use lambda policy" 
  policy      = file("permissions/basic_lambda_policy.json")
}

resource "aws_iam_role_policy_attachment" "lambda_role_workflow" {
  role       = aws_iam_role.lambda.name
  policy_arn = aws_iam_policy.policy.arn
}