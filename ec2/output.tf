output "az" {
  value = aws_instance.web.availability_zone
}
output "id" {
  value = aws_instance.web.id
}
output "region" {
  value = "us-east-1"
}
output "public_ip" {
  value = aws_instance.web.public_ip
}