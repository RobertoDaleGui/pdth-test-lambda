resource "aws_lambda_function" "terraform_lambda_func" {
  filename      = "../build/build.zip"
  source_code_hash = "${data.archive_file.zip_the_node_code.output_base64sha256}"
  function_name = var.lambda_name
  role          = aws_iam_role.lambda_role.arn
  handler       = "index.lambdaHandler"
  runtime       = "nodejs16.x"
  depends_on    = [aws_iam_role_policy_attachment.attach_iam_policy_to_iam_role]
}
