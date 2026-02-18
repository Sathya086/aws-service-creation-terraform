resource "aws_efs_file_system" "this" {
  creation_token = "${var.project}-efs"
}

output "efs_id" { value = aws_efs_file_system.this.id }
