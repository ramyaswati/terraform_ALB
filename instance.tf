resource "aws_instance" "ec2" {
  ami = "ami-02ca28e7c7b8f8be1"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.subnet1.id
  //user_data = file("shell.sh")
  vpc_security_group_ids = [aws_security_group.sgforinstance.id] 
  tags = {
    Name = "LB-EC2_1"
  }
}
resource "aws_instance" "ec21" {
  ami = "ami-02ca28e7c7b8f8be1"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.subnet2.id
  //user_data = file("shell.sh")
  vpc_security_group_ids = [aws_security_group.sgforinstance.id]
  tags = {
    Name = "LB-EC2_2"
  }
}
