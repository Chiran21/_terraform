provider "aws" {
    region = "us-east-1"  
}

resource "aws_instance" "test_instance" {
    instance_type = var.instance_type
    ami = var.ami_value
    subnet_id = var.subnet_id
      
}
