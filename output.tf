output "aws_lb_arn" {
  value = aws_lb.application-lb.id
}
output "aws_lb_pub_dns" {
  value = aws_lb.application-lb.dns_name
}

output "aws_vpc" {
  value = aws_vpc.main.id
}

output "aws_instance" {
  value = [aws_instance.ec2.id, aws_instance.ec21.id]
}
