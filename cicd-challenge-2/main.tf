terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  required_version = ">= 1.0.0"
}

provider "aws" {
  region                      = "us-east-1"
  access_key                  = "test1"
  secret_key                  = "test1"
  skip_credentials_validation = true
  skip_requesting_account_id  = true


  endpoints {
    ec2 = "http://localhost:4566"
  }
}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
}