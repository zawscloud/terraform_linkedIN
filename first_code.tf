#This is the provider block
provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

#This creates an EC2 Instance
resource "aws_s3_bucket" "tf_course" {
  bucket = "tf-course-12-08-21"
  acl    = "private"
}


