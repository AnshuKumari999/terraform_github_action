resource "aws_s3_bucket" "s3" {
bucket = var.buckname
}

provider "aws" {
  region = "eu-west-3"
}
