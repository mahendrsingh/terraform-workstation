provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAUQVEH7G326EVJZ54"
  secret_key = "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"
}

    resource "aws_instance" "test1_tf" {
      
      ami = "ami-0747bdcabd34c712a"
      instance_type = "t2.micro"
      key_name = "ritesh-ec2"
    }

    