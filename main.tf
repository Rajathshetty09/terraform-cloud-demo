terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "rajath-demmoo-bucket-9299345"

  tags = {
    Name        = "Demo Bucket"
    Environment = "Dev"
  }
}
