resource "aws_ebs_volume" "this" {
  availability_zone = "us-east-1a"
  size              = 10
  tags = { Name = "${var.project}-ebs" }
}

output "volume_id" { value = aws_ebs_volume.this.id }
