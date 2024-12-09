# Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.sao_paulo_vpc.id
  tags = {
    Name = "sao-paulo-igw"
  }
}
