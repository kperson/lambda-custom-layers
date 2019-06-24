resource "null_resource" "swift5_build" {
  triggers = {
    time = "${timestamp()}"
  }

  provisioner "local-exec" {
    working_dir = "swift5"
    command = "./build.sh"
  }
}

resource "aws_lambda_layer_version" "swift5" {
  depends_on          = ["null_resource.swift5_build"]
  filename            = "swift5/swift-shared-libs.zip"
  layer_name          = "swift5"
  compatible_runtimes = ["provided"]
}
output "swift5_layer_arn" {
  value = "${aws_lambda_layer_version.swift5.arn}"
}
