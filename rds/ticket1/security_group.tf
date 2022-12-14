resource "aws_security_group" "db" {
  name_prefix        = "db"
  ingress {
    from_port = "3306"
    to_port  = "3306"
    protocol    = "tcp"
  }
  tags = local.task_tags
}
