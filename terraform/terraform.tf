terraform {

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  required_version = ">= 0.13"
  
  // backend "remote" {
  //   hostname     = "app.terraform.io"
  //   organization = "john-morsley"
  //   workspaces {
  //     name = "learning-gitlab"
  //   }
  // }
  
}