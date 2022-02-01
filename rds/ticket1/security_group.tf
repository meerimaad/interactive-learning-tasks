resource "aws_security_group" "db" {
  name_prefix        = "db"
  # Your code goes here 
  
  
  
  # Please do not change the code below
  tags = local.task_tags
}
