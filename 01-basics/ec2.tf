#Terraform Settings
terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
    }
  }
}

#Provider Block
provider "aws" {
    region = "us-east-1"
    profile = "balaji1"
}

#Resource Block
resource "aws_instance" "terraform_server" {
    ami = "ami-06eecef118bbf9259"
    instance_type = "t2.micro"
    key_name = "balajiiway"
    security_groups = "sg-0f1cbd418994537f0"
}