# VPC
resource "aws_vpc" "sao_paulo_vpc" {
  cidr_block = "10.103.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "sao-paulo-vpc"
  }
}
