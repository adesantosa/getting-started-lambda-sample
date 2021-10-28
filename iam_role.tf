resource "aws_iam_role" "getting_started_lambda_sample_role" {
  name = "getting_started_lambda_sample_role"
  assume_role_policy = data.aws_iam_policy_document.role.json
  tags = {
    ApplicationRole = "Seguranca"
  }
}

 
resource "aws_iam_role_policy_attachment" "getting_started_lambda_sample_attach_dynamodb" {
  role       = "aws_iam_role.getting_started_lambda_sample_role.name"
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaDynamoDBExecutionRole"
}