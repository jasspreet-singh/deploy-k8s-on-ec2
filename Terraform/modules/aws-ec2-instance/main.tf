resource "aws_key_pair" "ec2_key_pair" {
  key_name   = "${var.instance_name}-key"
  public_key = file(var.public_key_path)
}

resource "aws_security_group" "ec2_security_group" {
  name        = "${var.instance_name}-security-group"
  description = "Allow SSH"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "k0s-ec2-node" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.ec2_key_pair.key_name
  vpc_security_group_ids = [aws_security_group.ec2_security_group.id]

  tags = {
    name = var.instance_name
    type = var.instance_type
  }
}