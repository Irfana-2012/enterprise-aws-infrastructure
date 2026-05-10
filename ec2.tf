# AMAZON LINUX AMI

data "aws_ami" "amazon_linux" {
  most_recent = true

  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }
}

# BASTION HOST

resource "aws_instance" "bastion" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public_1.id
  vpc_security_group_ids      = [aws_security_group.web_sg.id]
  associate_public_ip_address = true
  key_name                    = "enterprise-key"

  tags = {
    Name = "bastion-host"
  }
}

# PRIVATE WEB SERVER

resource "aws_instance" "web" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.private_app_1.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  key_name               = "enterprise-key"

  tags = {
    Name = "private-web-server"
  }
}