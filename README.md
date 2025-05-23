# Terraform AWS Infrastructure Modules

![Terraform Version](https://img.shields.io/badge/terraform-%3E%3D1.5.0-blue.svg)
![AWS Provider](https://img.shields.io/badge/AWS-Provider-orange.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)

## Overview

This repository contains production-grade Terraform modules for provisioning AWS infrastructure following best practices. The modules are designed to be secure, scalable, and reusable across different environments.

## Modules

| Module | Description | AWS Services |
|--------|-------------|--------------|
| [VPC](modules/vpc/) | Complete VPC infrastructure with public/private subnets | VPC, Subnets, NAT Gateway |
| [EC2](modules/ec2/) | Auto-scaled EC2 instances with load balancing | EC2, ALB, Auto Scaling |
| [RDS](modules/rds/) | Managed relational databases | RDS, Aurora |
| [S3](modules/s3/) | Secure object storage buckets | S3, IAM |

## Getting Started

### Prerequisites

- Terraform 1.5.0+
- AWS CLI configured
- IAM permissions for target resources

### Installation

```sh
git clone https://github.com/caseyshalom/terraform-aws.git
cd terraform-aws/examples/vpc
