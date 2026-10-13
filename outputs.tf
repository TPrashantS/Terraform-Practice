output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.prash_main.id
}

output "vpc_cidr" {
  description = "CIDR block of the VPC"
  value       = aws_vpc.prash_main.cidr_block
}

output "subnet_id" {
  description = "ID of the created subnet"
  value       = aws_subnet.public.id
}