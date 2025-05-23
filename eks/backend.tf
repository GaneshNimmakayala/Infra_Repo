terraform {
  required_version = "~> 1.11.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
backend "s3" {
    bucket         = "mys3backendbucket001"
    key            = "eks/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "LockID"
  }
}

provider "aws" {
  region  = var.aws-region
}
