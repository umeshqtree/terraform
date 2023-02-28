#Declare Cloud,region,access and sectre key
provider "aws" {
    region = "us-east-2"
    access_key = "AKIAUHKANT7P37FWOINN"
    secret_key = "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"
}
#######################################################
#Creating the baction host
resource "aws_instance" "ubuntu" {
   ami = "ami-00eeedc4036573771" //change ami id
   instance_type = "t2.micro"
   subnet_id = "subnet-02f4b1bb6be786f9b" //change subnet id
   associate_public_ip_address = "true"
   vpc_security_group_ids = ["sg-0251d7f7ed33799d1"] //change sg id
   key_name = "ohio" //change key name
    tags = {
      Name = "ubuntu"
    }  
}
output "instance_id"{
    value = aws_instance.ubuntu.id
}
output "Instance_PublicIP" {
    value = aws_instance.ubuntu.public_ip
}
output "Instance_Private_IP" {
    value = aws_instance.ubuntu.private_ip
  
}
####################
