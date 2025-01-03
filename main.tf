provider "aws" {
  region = "us-east-1"  # Replace with your desired region
}

# EC2 Instance
resource "aws_instance" "example" {
  ami           = "ami-12345678"  # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"

  tags = {
    Name = "Provisioned by Terraform"
  }
}

# S3 Bucket
resource "aws_s3_bucket" "example" {
  bucket = "my-unique-s3-bucket-name"  # Replace with a globally unique name
  acl    = "private"

  tags = {
    Name        = "MyS3Bucket"
    Environment = "Development"
  }
}
