resource "aws_subnet" "private1" {
    vpc_id     = aws_vpc.main.id
  availability_zone = "eu-west-1a"
  cidr_block = "10.0.101.0/24" 

  # Please do not change below code
  tags = local.task_tags
}


resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.main.id
  availability_zone = "eu-west-1b"
  cidr_block = "10.0.102.0/24"






  # Please do not change below code
  tags = local.task_tags
}



resource "aws_subnet" "private3" {
   vpc_id     = aws_vpc.main.id
  availability_zone = "eu-west-1c"
  cidr_block = "10.0.104.0/24"




  # Please do not change below code
  tags = local.task_tags
}
