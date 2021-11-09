resource "aws_instance" "app_server1" {
  ami           = "ami-0e0bf4b3a0c0e0adc"
  instance_type = "t2.micro"

  tags = {
    Name = "app_server1"
  }
}

resource "aws_instance" "app_server2" {
  ami           = "ami-0e5b6b6a9f3db6db8"
  instance_type = "t2.micro"
  provider      = aws.usw2

  tags = {
    Name = "app_server2"
  }
}
