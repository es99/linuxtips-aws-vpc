terraform {
  backend "s3" {
    bucket = "engels-linuxtips-statefiles"
    key    = "cluster-ecs"
    region = "us-east-2"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}