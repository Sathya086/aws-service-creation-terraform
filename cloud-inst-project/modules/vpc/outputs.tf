output "vpc_id" { value = aws_vpc.this.id }

output "public_subnets" {
  value = [aws_subnet.public1.id, aws_subnet.public2.id]
}

# output "private_subnets" {
#   value       = aws_subnet.private[*].id  # or whatever resource you use for private subnets
#   description = "IDs of the private subnets"
# }

# output "public_subnets" {
#   value       = aws_subnet.public[*].id
#   description = "IDs of the public subnets"
# }

# output "vpc_id" {
#   value       = aws_vpc.this.id
#   description = "VPC ID"
# }
