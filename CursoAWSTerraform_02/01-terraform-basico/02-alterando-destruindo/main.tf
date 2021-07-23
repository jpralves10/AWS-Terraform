
terraform {
  required_version = "1.0.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.50.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "terraform"
}

resource "aws_s3_bucket" "my-bucket-terraform" {
  bucket = "bucket-terraform-jpralves10"
  acl    = "private"

  tags = {
    Name        = "My first terraform bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Jean Alves"
    UpdateAt    = "2021-07-21"
  }
}
