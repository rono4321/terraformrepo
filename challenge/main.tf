provider "aws" {
  region = "ap-south-1"
}

resource "aws_vpc" "challengevpc" {
    cidr_block = "10.100.0.0/16"
    tags = {
        Name = "ChallengeVPC"
    }
  
}