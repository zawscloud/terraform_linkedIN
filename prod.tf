#This is the provider block
provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

#This creates an S3 Bucket
resource "aws_s3_bucket" "tf_course" {
  bucket = "tf-course-12-08-21"
  acl    = "private"
}

#This creates an EC2 Instance
resource "aws_instance" "name" {
  ami = "ami-002068ed284fb165b"
  instance_type = "t2.micro"

  tags = {
    Name = "tf-course-webserver"
  }

  lifecycle {
    create_before_destroy = true
  }
}


