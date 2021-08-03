provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAUQVEH7G326EVJZ54"
  secret_key = "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"
}

resource "aws_security_group" "sgvar" {
  name        = "sgvar"
  description = "Allow TLS inbound traffic"

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
   /* cidr_blocks      = [aws_eip.lb.public_ip] */
    cidr_blocks      = [var.vpn_ip]
  }

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
   /* cidr_blocks      = [aws_eip.lb.public_ip] */
    cidr_blocks      = [var.vpn_ip]
  }

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
   /* cidr_blocks      = [aws_eip.lb.public_ip] */
    cidr_blocks      = [var.vpn_ip]
  }
}
