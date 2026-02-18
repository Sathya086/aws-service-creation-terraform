resource "aws_db_instance" "this" {
  identifier            = "${var.project}-rds"
  engine                = "mysql"
  instance_class        = "db.t3.micro"
  allocated_storage     = 20
  username              = var.db_user
  password              = var.db_pass
  db_subnet_group_name    = aws_db_subnet_group.this.name
  skip_final_snapshot   = true
}

# variable "private_subnet_ids" {
#   type = list(string)
# }

resource "aws_db_subnet_group" "this" {
  name       = "${var.project}-rds-subnet"
  subnet_ids = var.private_subnet_ids

  tags = {
    Name = "${var.project}-rds-subnet"
  }
}
