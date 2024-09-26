terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-southeast-1"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "172.16.21.0/24"
  tags = {
    Name = "21-simple-vpc"
  }
}
