terraform {
  required_version = "1.0.9"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.63.0"
    }
  }
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs
provider "aws" {
  region  = "us-east-1" # Brasil -> us-east-1
  profile = "andsantos"
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#private-bucket-w-tags
resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "andsantos-my-bucket-s3"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby   = "Terraform"
  }
}
