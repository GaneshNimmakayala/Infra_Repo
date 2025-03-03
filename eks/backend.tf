terraform {
  required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "mys3backendbucket001"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "LockID"
  }
}

provider "aws" {
  region  = var.aws-region
}
