output security_group_arn {
  value = aws_security_group.allow_tls.arn
}
output security_group_id {
  value = aws_security_group.allow_tls.id
}

output security_group_owner_id {
  value = aws_security_group.allow_tls.owner_id
}
