resource "aws_route53_record" "wordpress" {
  zone_id = "Z070803611T99TKR8GVFE"
  name    = "wordpress.awssimplefied.com"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.web.public_ip]
}
