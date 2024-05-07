resource "aws_instance" "bootcamp-manager-node01" {
  ami           = "ami-0b0dcb5067f052a63"
  instance_type = "t2.micro"
  key_name      = "mba-bootcamp"
  subnet_id     = aws_subnet.bootcamp-public-subnet.id

  tags = {
    Name = "bootCamp-Manager_Node01"
  }
}

resource "aws_instance" "bootcamp-manager-node02" {
  ami           = "ami-0b0dcb5067f052a63"
  instance_type = "t2.micro"
  key_name      = "mba-bootcamp"
  subnet_id     = aws_subnet.bootcamp-public-subnet.id

  tags = {
    Name = "bootCamp-Manager_Node02"
  }
}

resource "aws_instance" "bootcamp-manager-node03" {
  ami           = "ami-0b0dcb5067f052a63"
  instance_type = "t2.micro"
  key_name      = "mba-bootcamp"
  subnet_id     = aws_subnet.bootcamp-public-subnet.id

  tags = {
    Name = "bootCamp-Manager_Node03"
  }
}

resource "aws_instance" "bootcamp-worker-node01" {
  ami           = "ami-0b0dcb5067f052a63"
  instance_type = "t2.micro"
  key_name      = "mba-bootcamp"
  subnet_id     = aws_subnet.bootcamp-public-subnet.id

  tags = {
    Name = "bootCamp-Worker_Node01"
  }
}

resource "aws_instance" "bootcamp-worker-node02" {
  ami           = "ami-0b0dcb5067f052a63"
  instance_type = "t2.micro"
  key_name      = "mba-bootcamp"
  subnet_id     = aws_subnet.bootcamp-public-subnet.id

  tags = {
    Name = "bootCamp-Worker_Node02"
  }
}

resource "aws_instance" "bootcamp-worker-node03" {
  ami           = "ami-0b0dcb5067f052a63"
  instance_type = "t2.micro"
  key_name      = "mba-bootcamp"
  subnet_id     = aws_subnet.bootcamp-private-subnet.id

  tags = {
    Name = "bootCamp-Worker_Node03"
  }
}

resource "aws_instance" "bootcamp-worker-node04" {
  ami           = "ami-0b0dcb5067f052a63"
  instance_type = "t2.micro"
  key_name      = "mba-bootcamp"
  subnet_id     = aws_subnet.bootcamp-private-subnet.id


  tags = {
    Name = "bootCamp-Worker_Node04"
  }
}