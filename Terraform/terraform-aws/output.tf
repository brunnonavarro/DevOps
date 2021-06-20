output "ec2-instance" {
    value = aws_instance.ec2.public_ip
}