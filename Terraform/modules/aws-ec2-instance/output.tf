output "instance_id" {
  value = aws_instance.k0s-ec2-node.id
}

output "public_ip" {
  value = aws_instance.k0s-ec2-node.public_ip
}