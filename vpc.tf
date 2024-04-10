# Creating vpc
Resource "aws_vpc" "demovpc" {
  cidr_block = "${var.vpc_cidr}"
  instance_tenancy = "default"
  tags = {
    Name = "demo vpc"
  }
}
