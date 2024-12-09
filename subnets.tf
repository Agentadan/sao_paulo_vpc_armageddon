# Subnets
resource "aws_subnet" "public_subnet_a" {
  vpc_id            = aws_vpc.sao_paulo_vpc.id
  cidr_block        = "10.103.1.0/24"
  availability_zone = "sa-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "public-subnet-a"
  }
}

resource "aws_subnet" "public_subnet_b" {
  vpc_id            = aws_vpc.sao_paulo_vpc.id
  cidr_block        = "10.103.2.0/24"
  availability_zone = "sa-east-1b"
  map_public_ip_on_launch = true
  tags = {
    Name = "public-subnet-b"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.sao_paulo_vpc.id
  cidr_block        = "10.103.3.0/24"
  availability_zone = "sa-east-1a"
  map_public_ip_on_launch = false
  tags = {
    Name = "private-subnet-syslog"
  }
}
