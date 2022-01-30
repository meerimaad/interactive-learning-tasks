resource "aws_iam_user" "bob" {
  # Your code goes here
  # Do not change below tags
  tags = local.task_tags
}

resource "aws_iam_group" "sysusers" {
  # Your code goes here
}

resource "aws_iam_group_membership" "members" {
  # Your code goes here
}
