# creating RDS instance

resource "aws_db_subnet_group" "default" {
  name = "main"
  subnet_ids = [aws_subnet.database_subnet-1.id,aws_subnet.database_subnet-2.id]
  tags = {
    Name = "my DB subnet group"
    }
  }
resource "aws_db_instance" "default" {
  allocated_storage = 10
  db_subnet_group_name = aws_db_subnet_group.default.id
  engine = "my SQL"
  engine_version = "8.0.20"
  instance_class = "db.t2.micro"
  multi_az = true
  name= "mydb"
  username= "username"
  password = "password"
  skip_final_snapshot = true
  vpc_security_group_ids = [aws_security_group.database_sg.id]
  }
