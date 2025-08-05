# main.tf

# This is a sample Terraform file used to test the IaC Security Scan workflow.
# It defines a simple S3 bucket with a deliberately insecure configuration
# so that Trivy, tfsec, and Checkov will each generate findings.

# Configure the AWS provider in the eu-west-1 region
provider "aws" {
  region = "eu-west-1"
}

# Define an S3 bucket with public-read ACL to trigger security warnings
resource "aws_s3_bucket" "public_bucket" {
  bucket = "iac-scan-test-bucket"
  acl    = "public-read"

  tags = {
    Environment = "test"
  }
}
