provider "aws" {
    region = "us-east-1"
}


terraform {
  backend "s3" {}
}

# Backend bucket will be mentioned in the respective environment folder.
