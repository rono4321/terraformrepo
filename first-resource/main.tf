provider "aws" {
  region = "ap-south-1"
}

resource "aws_vpc" "myvpc" {
  cidr_block = "192.168.0.0/16"
  tags = {
    "Name" = "TerraformVPC"
    "TestTag" = "${var.ron}"
    "InputTag" = "${var.InputVariable}"
  }
}

variable "ron" {
  default = "Rono"
  description = "Test Variable"
type = string

}

variable "InputVariable" {
    type = string
    description = "Test Input Variable" 
}

output "TestOutput" {
  description = "VPCID"
  value = aws_vpc.myvpc.id
}