provider "aws" {
    region = "us-east-1"
}

module "EC2_instance" {
    source = "./module/EC2_instance"
}