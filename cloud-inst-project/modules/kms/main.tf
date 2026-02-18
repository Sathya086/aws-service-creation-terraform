resource "aws_kms_key" "this" {
  description = "${var.project}-kms"
}
