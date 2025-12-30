terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.27.0"
    }
  }
}

# S3 Backend--

terraform {
  backend "s3" {
    bucket = "my-lct-bkt-302025"
    dynamodb_table = "state-lock"
    key = "dev/terraform.tfstate"
    region = "us-east-1"
    
  }
}


provider "aws" {
  region = "us-east-1"
}