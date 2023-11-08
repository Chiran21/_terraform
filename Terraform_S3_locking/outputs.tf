output "EC2_instance_public_ip" {
    value = aws_instance.test_instance.EC2_instance_public_ip 
}
output "aws_instance_AMI_ID" {
    value = aws_instance.test_instance.ami  
}
output "aws_instance_Subnet_id" {
    value = aws_instance.test_instance.subnet_id  
}
output "aws_instance_VPC" {
    value = aws_instance.test_instance.public_dns  
}