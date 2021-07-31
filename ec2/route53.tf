resource "aws_route53_record" "www" {
  zone_id = "Z32OHGRMBVZ9LR"
  name    = "wordpress.example.com"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.web.public_ip]
}