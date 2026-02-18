resource "aws_sns_topic" "this" {
  name = "${var.project}-topic"
}

output "topic_arn" { value = aws_sns_topic.this.arn }
