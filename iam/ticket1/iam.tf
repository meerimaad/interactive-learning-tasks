resource "aws_iam_user" "bob" {
  name = "bob"
  # Do not change below tags
  tags = local.task_tags
}
resource "aws_iam_user_login_profile" "bob" {
  user            = aws_iam_user.bob.name
  password_length = 46
  lifecycle {
    ignore_changes = [
      password_length,
      password_reset_required,
      pgp_key,
    ]
  }
}
resource "aws_iam_group" "sysusers" {
   name = "sysusers"
  path = "/users/"
}


resource "aws_iam_group_membership" "members" {
   name = "sysusers-group-membership"
  users = [
    aws_iam_user.user_bob.name,
  ]
  group = aws_iam_group.group.name
}
resource "aws_iam_group" "group" {
  name = "sysusers-group"
}
resource "aws_iam_user" "user_bob" {
  name = "bob-user"

}
resource "aws_iam_user" "bobs_unique_id" {
  name = "bobs_unique_id"
}# Your code goes here

