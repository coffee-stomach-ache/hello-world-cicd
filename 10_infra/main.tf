# ---------------------------------------------
# Terraform configuration
# ---------------------------------------------
terraform {
  required_version = ">=0.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket  = "gh-udemy"
    key     = "hirota-training-gha.tfstate"
    region  = "ap-northeast-1"
    profile = "pf-1-sandbox"
  }
}

# ---------------------------------------------
# Provider
# ---------------------------------------------
provider "aws" {
  profile = "pf-1-sandbox"
  region  = "ap-northeast-1"
}

provider "aws" {
  alias   = "virginia"
  profile = "pf-1-sandbox"
  region  = "us-east-1"
}
