variable "aws_region" {
  description = "AWS region containing the existing VPC"
  type        = string
  default     = "us-east-1"
}

variable "vpc_id" {
  description = "ID of the existing VPC"
  type        = string
}

variable "subnet_id" {
  description = "ID of an existing subnet inside the VPC"
  type        = string
}

variable "security_group_id" {
  description = "ID of the existing security group"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}
