provider "aws" {
  region = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}


resource "aws_s3_bucket" "aws_bucket_env012" {
  bucket = "aws_bucket_env012"
  tags = {
    Name = "env0bucketaws12"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.aws_bucket_env012.bucket
}
