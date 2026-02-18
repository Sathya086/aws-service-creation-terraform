variable "project" {}
variable "db_user" {}
variable "db_pass" {}
variable "sg_id" {}

variable "private_subnet_ids" {
  type = list(string)
}

resource "aws_db_subnet_group" "this" {
  name       = "${var.project}-rds-subnet"
  subnet_ids = var.private_subnet_ids

  tags = {
    Name = "${var.project}-rds-subnet"
  }
}