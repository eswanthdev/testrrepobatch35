terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.2.0"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAYXHHY2PQDY6PGKMV"
  secret_key = "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"
}

resource "aws_instance" "web" {
  ami           =  "ami-0ed0db2973d590eb7"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}

