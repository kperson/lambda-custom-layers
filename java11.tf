resource "null_resource" "make_java11" {
  triggers = {
    time = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = "make java11"
  }
}

resource "aws_lambda_layer_version" "java11" {
  depends_on          = ["null_resource.make_java11"]
  filename            = "java-dist.zip"
  layer_name          = "java11"
  compatible_runtimes = ["provided"]
}
output "java11_layer_arn" {
  value = "${aws_lambda_layer_version.java11.arn}"
}
