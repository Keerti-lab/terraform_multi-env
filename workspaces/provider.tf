terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.63.1"
    }
  }
  backend "s3" {
    bucket = "devbucket-191"
    
region = "us-east-1"
    dynamodb_table = "devbucket-191"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}