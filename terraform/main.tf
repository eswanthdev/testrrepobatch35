terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"

}

resource "aws_instance" "web" {
  ami           =  "ami-0ed0db2973d590eb7"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld11"
  }
}

