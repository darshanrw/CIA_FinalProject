# AWS Infrastructure Automation with Terraform

## Overview
This project demonstrates deploying AWS infrastructure using Terraform. Resources include:
- S3 bucket for Terraform state
- DynamoDB for state locking
- Custom VPC with an EC2 instance

## Prerequisites
- AWS CLI configured with credentials
- Key pair for EC2 access

## How to Use
1. Clone this repository.
2. Edit `terraform.tfvars` with your values.
3. Initialize Terraform: `terraform init`.
4. Plan: `terraform plan`.
5. Apply: `terraform apply`.

## Resources Created
- S3 Bucket with versioning for state storage
- DynamoDB for locking
- VPC with public subnet and EC2 instance
