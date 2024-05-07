resource "aws_vpc" "bootcamp" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "bootcamp"
  }
}

resource "aws_subnet" "bootcamp-private-subnet" {
  vpc_id            = aws_vpc.bootcamp.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "bootcamp-private-subnet"
  }
}

resource "aws_subnet" "bootcamp-public-subnet" {
  vpc_id            = aws_vpc.bootcamp.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "bootcamp-public-subnet"
  }
}

resource "aws_internet_gateway" "bootcamp-igw" {
  vpc_id = aws_vpc.bootcamp.id
  tags = {
    Name = "bootcamp-iwg"
  }
}

resource "aws_nat_gateway" "bootcamp-ngw" {
  subnet_id     = aws_subnet.bootcamp-private-subnet.id
  allocation_id = aws_eip.bootcamp-ngw.id

  tags = {
    Name = "bootcamp-ngw"
  }

  depends_on = [aws_internet_gateway.bootcamp-igw]
}

resource "aws_route_table" "bootcamp-private-rt" {
  vpc_id = aws_vpc.bootcamp.id

  route {
    cidr_block     = "0.0.0.0/24"
    nat_gateway_id = aws_nat_gateway.bootcamp-ngw.id
  }

  tags = {
    Name = "bootcamp-private-rt"
  }
}

resource "aws_route_table" "bootcamp-public-rt" {
  vpc_id = aws_vpc.bootcamp.id

  route {
    cidr_block = "0.0.0.0/24"
    gateway_id = aws_internet_gateway.bootcamp-igw.id
  }

  tags = {
    Name = "bootcamp-public-rt"
  }
}