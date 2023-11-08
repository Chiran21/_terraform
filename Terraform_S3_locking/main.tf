provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "sampleEC2" {
    ami = "ami-0261755bbcb8c4a84"
    subnet_id = "subnet-00659f61904500641"
    instance_type = "t2.micro"
}

resource "aws_s3_bucket" "lockfile" {
    bucket = "samplebucketforlockingterras3"
    tags = {
        Name = "this.is.my.bucket.for.terra"
    } 
}

resource "aws_s3_bucket" "lockfile2" {
    bucket = "samplebucketforlockingterras345"
    tags = {
        Name = "this.is.my.bucket.for.terra"
    } 
}
resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}