variable "region" { default = "us-east-1" }
variable "project" { default = "aws15" }
variable "ami" {}
variable "instance_type" { default = "t3.micro" }
variable "db_user" {}
variable "db_pass" {}
variable "lambda_zip_path" {}
variable "domain" {}