resource "aws_instance" "demo" {
  instance_type = "t3.micro"
  ami           = "ami-0b826bb6d96d2afe4"
  vpc_security_group_ids = [
    "sg-0cb821092eec51d4c"
  ]
  tags = {
    Name = "import-demo-change"
  }
}