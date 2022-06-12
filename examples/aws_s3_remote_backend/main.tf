terraform {
  required_version = ">= 0.14.9"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

module "example_remote_backend" {
  source    = "../../aws_s3_remote_backend"
  component = "example"
}
