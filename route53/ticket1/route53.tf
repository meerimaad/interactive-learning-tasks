resource "aws_route53_record" "www" {
  zone_id = "Z070803611T99TKR8GVFE"  
  name    = "blog.awssimplefied.com"     
  type    = "A"
  ttl     = "300"
  records = ["127.0.0.1"]
}
