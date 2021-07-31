resource "aws_route53_record" "www" {
  zone_id = "Z32OHGRMBVZ9LR"
  name    = "wordpress.example.com"
  type    = "A"
  ttl     = "300"
  records = ["127.0.0.1"]
}