provider "aws" {
  region = "us-west-2" # Ganti dengan region yang Anda inginkan
}

# 1. Create VPC
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  
  tags = {
    Name  = "LKS-CC-2024-VPC"
    LKS-CC-2024 = "VPC"
  }
}

# 2. Create Subnets
# Public Subnet A
resource "aws_subnet" "public_a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.0.0/28"
  availability_zone = "${var.region}a" # Misal: us-west-2a
  
  tags = {
    Name  = "public-subnet-a"
    LKS-CC-2024 = "PUBLIC-SUBNET-A"
  }
}

# Public Subnet B
resource "aws_subnet" "public_b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.0.16/28"
  availability_zone = "${var.region}b" # Misal: us-west-2b
  
  tags = {
    Name  = "public-subnet-b"
    LKS-CC-2024 = "PUBLIC-SUBNET-B"
  }
}

# Private Subnet A
resource "aws_subnet" "private_a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.0.32/28"
  availability_zone = "${var.region}a"
  
  tags = {
    Name  = "private-subnet-a"
    LKS-CC-2024 = "PRIVATE-SUBNET-A"
  }
}

# Private Subnet B
resource "aws_subnet" "private_b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.0.48/28"
  availability_zone = "${var.region}b"
  
  tags = {
    Name  = "private-subnet-b"
    LKS-CC-2024 = "PRIVATE-SUBNET-B"
  }
}

# Variabel untuk region
variable "region" {
  default = "us-west-2" # Sesuaikan dengan region Anda
}