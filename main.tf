resource "aws_lambda_layer_version" "lambda_layer" {
  filename   = "java-dist.zip"
  layer_name = "java11"
  compatible_runtimes = ["provided"]
}
