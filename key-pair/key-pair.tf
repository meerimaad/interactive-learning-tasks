resource "aws_key_pair" "ilearning-wordpress" {
  key_name   = "ilearning-wordpress"
  public_key = file("~/.ssh/id_rsa.pub")
  tags = local.task_tags
}