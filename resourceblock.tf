resource "aws_security_group" "example_sg" {
  name = "allow_ssh_and_http"

  tags = {
    name = "mysg"
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "instances" {
  ami               = "ami-05b46bc4327cf9d99"
  key_name          = "script123"
  instance_type     = "t2.micro"
  security_groups   = [aws_security_group.example_sg.name]

  tags = {
    Name = "instance-1"
  }
}
