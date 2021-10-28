resource "aws_lambda_function" "lambda_sample" {
  filename         = "getting-started-lambda-sample.zip"
  function_name    = "lambda_sample"
  role             = "aws_iam_role.getting_started_lambda_sample_role.arn"
  handler          = "function_lambda.lambda_sample"
  source_code_hash = data.archive_file.lambda_zip.output_base64sha256
  runtime          = "python3.8"
}

data "archive_file" "lambda_zip" {
    type          = "zip"
    source_file   = "function_lambda.py"
    output_path   = "getting-started-lambda-sample.zip"
}