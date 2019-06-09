resource "null_resource" "clean" {
  depends_on = [
    "aws_lambda_layer_version.java11"
  ]
  triggers = {
    time = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = "make clean"
  }
}
