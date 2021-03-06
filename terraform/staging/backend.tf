terraform {
  backend "s3" {
    bucket = "rhill-terraform"
    key    = "n0syn-com/staging/terraform.tfstate"
    region = "us-west-2"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  required_version = "1.1.4"
}

provider "aws" {
  region = "us-west-2"
}
