resource "aws_iam_user" "bob" {
  # Your code goes here
  # Do not change below tags
  tags = local.common_tags
}

resource "aws_iam_group" "sysusers" {
  # Your code goes here
  # Do not change below tags
  tags = local.common_tags
}

resource "aws_iam_group_membership" "members" {
  # Your code goes here
}
