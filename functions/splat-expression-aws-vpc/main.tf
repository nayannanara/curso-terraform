terraform {
  required_version = ">= 1.7.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "nay-remote-state"
    key    = "splat-expression/terraform.tfstate"
    region = "eu-central-1"
  }

}

provider "aws" {
  region = "eu-central-1"

  default_tags {
    tags = {
      owner      = "nayannanara"
      managed-by = "terraform"
    }
  }
}
