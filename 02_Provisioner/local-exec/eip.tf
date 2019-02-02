
resource "aws_eip" "variable_eip" {
  instance = "${aws_instance.variable_web.id}"
}
