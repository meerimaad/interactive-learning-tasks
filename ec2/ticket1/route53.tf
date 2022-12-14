resource "aws_route53_record" "wordpress" {
  zone_id = "Z070803611T99TKR8GVFE"
  name    = # Your code goes here
  type    = "wordpress.awssimplefied.com"
  ttl     = "300"
  records = [aws_instance.web.public_ip]
}
