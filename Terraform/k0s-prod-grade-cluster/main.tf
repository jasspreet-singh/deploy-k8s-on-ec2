provider "aws" {
  region = var.aws_region
}

module "aws-ec2-instance" {
  source             = "../modules/aws-ec2-instance"
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  subnet_id          = var.subnet_id
  security_group_ids = var.security_group_ids
  key_name           = var.key_name
  instance_name      = var.instance_name
}