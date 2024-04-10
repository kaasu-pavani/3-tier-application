# create web subnet1

resource "aws_subnet" "public_subnet-1" {
vpc_id = "${aws_vpc.demovpc.id}"
cidr_block = "${var.subnet_cidr}"
map_public_ip on_launch = true
availability zone = "us-east-1a"
tags = {
Name = "web subnet 1"
}
}

# create web subnet2

resource "aws_subnet" "public_subnet-2" {
vpc_id = "${aws_vpc.demovpc.id}"
map_public_ip_on_launch = true
availability zone = "us-east-1b"
tags = {
Name = "web subnetb 2"
}
}

# create application subnet1

resource "aws_subnet" "application_subnet-1" {
vpc_id = "${aws_vpc.demovpc.id}"
cidr_block = "${var.subnet2-cidr}
map_public_ipon_launch = false
availability zone = "us-east-1a"
tags = {
Name = "application subnet 1"
}
}

# create application subnet2

resource "aws_subnet" "application_subnet-2" {
vpc_id = "${aws_vpc.demovpc.id}"
cidr_block = "${var.subnet3_cidr}"
map_public_ip_on_launch = false
availability zone = "us-east -1b"
tags = {
Name = "application subnet 2"
}
}

#create Database private subnet

resource "aws_subnet" "database_subnet-1" {
vpc_id = "${aws_vpc.demovpc.id}"
cidr_block = "${var.subnet4_cidr}"
availability zone = "us-east-1a"
tags = {
Name = "database subnet1"
}
}

# create database private subnet

resource "aws_subnet" "database_subnet-2" {
vpc_id = "${aws_vpc.demovpc.id}"
cidr_block = "${var.subnet5_cidr}"
availability zone = "us-east-1a"
tags = {
Name = "database subnet1"
}
}




