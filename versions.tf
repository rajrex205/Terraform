terraform {
   required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.5.0"
    }
    random = {
      source  = "hashicorp/random"
   }
  }

  backend "remote" {
    organization = "infra_test0036"

    workspaces {
      name = "app-dev-infra"
    }
  }
}
