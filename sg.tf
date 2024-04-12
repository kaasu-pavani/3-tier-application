# creating security group

resource "aws_security_group" "demosg" {
vpc_id = aws_vpc.demovpc.id

# inbound rules
# Http access froM anywhere

ingress {
from_port = 80
to_port = 80
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

# Https access from anywhere

ingress {
from_port = 443
to_port = 443
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

# ssh access from anywhere

ingress {
from_port = 22
from_port = 22
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

# outbound rules
# internet access to anywhere

egress {
from_port = 0
to_port = 0
protocol = "-1"
cidr_blocks = ["0.0.0.0/0"]
}
tags = {
  Name = "web sg"
  }
  }
  
