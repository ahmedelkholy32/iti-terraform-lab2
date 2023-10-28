terraform {
  backend "s3" {
    bucket = "iti-terraform"
    key = "lab2/terraform.tfstate"
    region = "eu-west-1"
    dynamodb_table = "elkholy"
  }
}