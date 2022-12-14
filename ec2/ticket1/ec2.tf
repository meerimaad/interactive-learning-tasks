resource "aws_instance" "web" {
  ami                         = "ami-ae6272b8"
  instance_type               = "t2.micro"
  user_data = "userdata.sh"
   
  tags = local.task_tags
}
