terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1" # Change to your preferred region
}

# Create the S3 bucket with specified configuration
resource "aws_s3_bucket" "lks_iot_bucket" {
  bucket = "lks-iot-bucket-2024" # Change to your preferred unique bucket name

  tags = {
    "LKS-CC-2024" = "LKS-IOT-S3"
  }
}

# Block all public access to the S3 bucket
resource "aws_s3_bucket_public_access_block" "block_public_access" {
  bucket = aws_s3_bucket.lks_iot_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}