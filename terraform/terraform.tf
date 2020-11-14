terraform {

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  required_version = ">= 0.13"
  
  # Terraform Cloud requires the following environment variables:

  # AWS_DEFAULT_REGION
  # AWS_ACCESS_KEY_ID
  # AWS_SECRET_ACCESS_KEY

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "john-morsley"
    workspaces {
      name = "learning-gitlab"
    }
  }
  
}