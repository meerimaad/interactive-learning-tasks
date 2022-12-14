resource "aws_db_instance" "default" {
  instance_class       = "db.t3.micro"
  allocated_storage      = 50
  engine               = "mysql"
  engine_version       = "5.7"
  username             = "foo"
  password             = "foobarbaz" 
  vpc_security_group_ids = [aws_security_group.db.id]
  auto_minor_version_upgrade = true
  max_allocated_storage = 500
  parameter_group_name="default.mysql5.7"
     skip_final_snapshot=true
  tags = local.task_tags
}

