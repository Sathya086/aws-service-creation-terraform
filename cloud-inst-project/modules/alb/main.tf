resource "aws_lb" "this" {
  name               = "${var.project}-alb"
  load_balancer_type = "application"
  subnets            = var.subnets # replace with your subnet IDs
  security_groups    = [var.sg_id]
}

output "alb_dns" { value = aws_lb.this.dns_name }
