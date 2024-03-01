resource "aws_subnet" "subnet1" {
  vpc_id = aws_vpc.main.id
  availability_zone = "us-east-2a"
  map_public_ip_on_launch = true
  cidr_block = "10.0.0.0/24"
  tags = {
    Name = "Loadbalancer_subnet_1"
  }
}
resource "aws_subnet" "subnet2" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-2b"

  tags = {
    "Name" = "Loadbalancer_subnet_1"
  }
}

