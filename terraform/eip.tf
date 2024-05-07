resource "aws_eip" "bootcamp-worker-node03" {
  instance = aws_instance.bootcamp-worker-node03.id
  vpc      = true
}

resource "aws_eip" "bootcamp-worker-node04" {
  instance = aws_instance.bootcamp-worker-node04.id
  vpc      = true
}

resource "aws_eip" "bootcamp-ngw" {
  vpc = true
}