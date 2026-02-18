resource "aws_route53_zone" "this" {
  name = var.domain
}

resource "aws_route53_record" "record" {
  zone_id = aws_route53_zone.this.zone_id
  name    = var.domain
  type    = "A"
  ttl     = 300
  records = ["1.2.3.4"]  # placeholder IP
}
