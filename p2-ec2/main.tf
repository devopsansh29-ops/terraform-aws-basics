terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

# EC2 Instance
resource "aws_instance" "demo" {
  ami           = "ami-0f58b397bc5c1f2e8" # Ubuntu 22.04 (ap-south-1)
  instance_type = "t2.micro"

  tags = {
    Name = "govind-ec2-demo"
  }
}

output "instance_id" {
  value = aws_instance.demo.id
}

output "public_ip" {
  value = aws_instance.demo.public_ip
}

