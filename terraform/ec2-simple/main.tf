terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">3.0.0"
      # version = "~> 4.16"
    }
  }

 #  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "eu-west-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0f20f820a86c541d3"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
