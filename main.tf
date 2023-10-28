provider "aws" {
  region = "eu-west-1"
  profile = "terraform"
}

variable "mycidr" {
  description = "This cidr used for vpc network"
}
variable "env" {
  description = "this value determine my environment"
}

resource "aws_vpc" "myvpc" {
  cidr_block = var.mycidr
  tags = {
    Name = var.env
  }
}