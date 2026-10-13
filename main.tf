data "aws_vpc" "existing" {
  id = var.vpc_id
}

data "aws_subnet" "existing" {
  id = var.subnet_id
}

data "aws_security_group" "existing" {
  id = var.security_group_id
}

# Find the latest Amazon Linux 2023 AMI
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
}

# Creating the EC2 instance in the existing subnet
resource "aws_instance" "prash_ec2" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type
  subnet_id     = data.aws_subnet.existing.id

  vpc_security_group_ids = [
    data.aws_security_group.existing.id
  ]

  associate_public_ip_address = false

  tags = {
    Name        = "terraform-practice-ec2"
    Environment = "Learning"
  }

  lifecycle {
        precondition {
            condition = (data.aws_subnet.existing.vpc_id == data.aws_vpc.existing.id)
            error_message = "The selected subnet must belong to the selected VPC."
        }
    }
}