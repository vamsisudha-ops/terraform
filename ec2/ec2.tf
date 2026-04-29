resource "aws_instance" "terraform" {
    ami = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_everyhost.id]
    
    tags = {
        Name = "terraform"
        Terraform = "true"
    }
}

resource "aws_security_group" "allow_everyhost" {       #here allow_everyhost is Terraform Reference 
  name   = "allow-everyhost"   # here allow-everyhost is Security group name 

  egress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }

  ingress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }

  tags = {
    Name = "allow-everyhost"       # here allow-everyhost is for user-display in AWS Console 
  }

}