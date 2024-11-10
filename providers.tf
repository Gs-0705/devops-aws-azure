terraform {
  backend "s3" {
    bucket         = "aws-s3-test-bucket1122"
    dynamodb_table = "LockID"
    key            = "mumbai/mystatefile/terraform.tfstate"
    encrypt        = true
    region         = "ap-south-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.75.0"
    }
  }
}

provider "aws" {
  # Configuration options
}