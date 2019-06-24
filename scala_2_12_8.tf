# resource "null_resource" "make_java11" {
#   triggers = {
#     time = "${timestamp()}"
#   }

#   provisioner "local-exec" {
#     command = "make java11"
#   }
# }

resource "aws_lambda_layer_version" "scala_2_12_8" {
  # depends_on          = ["null_resource.make_java11"]
  filename            = "scala_2_12_8/scala_2_12_8.zip"
  layer_name          = "scala_2_12_8"
  source_code_hash    = "${filebase64sha256("scala_2_12_8/scala_2_12_8.zip")}"
  compatible_runtimes = ["provided"]
}
output "scala_2_12_8_layer_arn" {
  value = "${aws_lambda_layer_version.scala_2_12_8.arn}"
}
