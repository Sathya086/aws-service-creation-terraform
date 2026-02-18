resource "aws_instance" "this" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = [var.sg_id]
   subnet_id     = var.subnet_id
  tags = { Name = "${var.project}-ec2" }
}
