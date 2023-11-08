terraform {
  backend "s3" {
    bucket = "samplebucketforlockingterras3"
    region = "us-east-1"
    key = "chiran/terraform.tfstate"
    encrypt        = true
    dynamodb_table = "terraform-lock"  
  }
}