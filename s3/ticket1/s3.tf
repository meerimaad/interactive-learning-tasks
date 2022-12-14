resource "aws_s3_bucket" "ticket1" {
  bucket_prefix = "aws-s3-devops-task-nazerke"
  
  
  tags = local.task_tags
}
resource "aws_s3_bucket_acl" "ticket1" {
  bucket = aws_s3_bucket.ticket1.id
  acl    = "private"
}
resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.ticket1.id
  versioning_configuration {
    status = "Enabled"
  }
}
