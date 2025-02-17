# Outputs
output "vpc_id" {
  value = aws_vpc.sao_paulo_vpc.id
}

output "public_subnet_a_id" {
  value = aws_subnet.public_subnet_a.id
}

output "public_subnet_b_id" {
  value = aws_subnet.public_subnet_b.id
}

output "private_subnet_id" {
  value = aws_subnet.private_subnet.id
}

