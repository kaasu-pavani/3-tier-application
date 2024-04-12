# creating 1st instance in public subnet

resource "aws_instance" "demoinstance" {
ami = "ami_087c17d1fe0178315"
instance_type = "t2.micro"
count = 1
key_name = "tests"
vpc_security_group_ids = "aws_security-group.demosg.id"
subnet_id = "aws_subnet.demoinstance.id"
associate_public_ip_address = true
user_data = "{file("data.sh")}"
tags = {
Name = "my public instance"
}
}

#creating 2nd ec2 instance in public subnet

resource "aws_instance" "demoinstance 1" {
ami = "ami_087c17d1fe0178315"
instance_type = "t2.micro"
count = 1
key_name = "tests"
vpc_security_group_ids = "aws_security_group_group.demosg.id"
subnet_id = "aws_subnet.demoinstance.id"
associate_public_ip_address = true
user_data = "{file("data.sh")}"
tags = {
Name = "my public instance 2"
}
}
