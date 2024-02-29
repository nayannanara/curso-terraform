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
    key    = "aws-provider/terraform.tfstate"
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
provider "aws" {
  region = "us-east-1"
  alias  = "eua"

  default_tags {
    tags = {
      owner      = "nayannanara"
      managed-by = "terraform"
    }
  }
}
provider "aws" {
  alias  = "australia"
  region = "ap-southeast-2"

  default_tags {
    tags = {
      owner      = "nayannanara"
      managed-by = "terraform"
    }
  }
}


module "vpc" {
  providers = {
    aws.provider_1 = aws.eua
    aws.provider_2 = aws.australia
  }
  source = "./vpc"
}
