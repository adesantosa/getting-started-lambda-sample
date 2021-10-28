resource "aws_lambda_function" "lambda_sample" {
  filename         = "getting-started-lambda-sample.zip"
  function_name    = "lambda_sample"
  role             = "arn:aws:iam::468077353319:role/service-role/getting-started-role-gs3u5gk5"
  handler          = "function_lambda.lambda_sample"
  source_code_hash = data.archive_file.lambda_zip.output_base64sha256
  runtime          = "python3.8"
}

data "archive_file" "lambda_zip" {
    type          = "zip"
    source_file   = "function_lambda.py"
    output_path   = "getting-started-lambda-sample.zip"
}
