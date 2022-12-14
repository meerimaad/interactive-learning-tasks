resource "aws_vpc" "main" {

  cidr_block = "10.0.0.0/16"
  tags       = local.task_tags
}

# Your code goes here
resource "aws_route_table" "main" {
  vpc_id = aws_vpc.main.id
route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
}
resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.public1.id 
  route_table_id = aws_route_table.main.id
}
resource "aws_route_table" "example" {
  vpc_id = aws_vpc.main.id
route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.example.id
  }
}
resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.private1.id 
  route_table_id = aws_route_table.example.id
}