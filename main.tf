provider "aws" {
  region = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}


variable "aws_access_key" {
  type = string
  default = ""
}

variable "aws_secret_key" {
  type = string
  default = ""
}

resource "aws_s3_bucket" "aws-bucket-env012" {
  bucket = "aws-bucket-env012"
  tags = {
    Name = "env0bucketaws12"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.aws-bucket-env012.bucket
}
