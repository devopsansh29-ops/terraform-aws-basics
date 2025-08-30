provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "demo" {
  bucket = "govind-terraform-demo-${random_id.rand.hex}"
  acl    = "private"
}

resource "random_id" "rand" {
  byte_length = 4
}

