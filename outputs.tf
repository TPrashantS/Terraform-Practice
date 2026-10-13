output "vpc_id" {
  description = "ID of the existing VPC"
  value       = data.aws_vpc.existing.id
}

output "subnet_id" {
  description = "ID of the existing subnet"
  value       = data.aws_subnet.existing.id
}

output "security_group_id" {
  description = "ID of the existing security group"
  value       = data.aws_security_group.existing.id
}

output "instance_id" {
  description = "ID of the created EC2 instance"
  value       = aws_instance.prash_ec2.id
}

output "private_ip" {
  description = "Private IPv4 address of the EC2 instance"
  value       = aws_instance.prash_ec2.private_ip
}
