resource "aws_subnet" "public1" {
   vpc_id     = aws_vpc.main.id
  availability_zone = "eu-west-1a"
  cidr_block = "10.0.1.0/24"






  # Please do not change below code
  tags = local.task_tags
}


resource "aws_subnet" "public2" {
     vpc_id     = aws_vpc.main.id
  availability_zone = "eu-west-1b"
  cidr_block = "10.0.2.0/24"







  # Please do not change below code
  tags = local.task_tags
}



resource "aws_subnet" "public3" {
    vpc_id     = aws_vpc.main.id
  availability_zone = "eu-west-1c"
  cidr_block = "10.0.3.0/24"




  # Please do not change below code
  tags = local.task_tags
}
