output "ec2_arn" {
  value = aws_instance.myapp.arn
}
output "ec2_ami" {
  value = aws_instance.myapp.ami
}
output "ec2_instance_state" {
  value = aws_instance.myapp.instance_state
}
output "ec2_public_ip" {
  value = aws_instance.myapp.public_ip
}
output "ec2_public_dns" {
  value = aws_instance.myapp.public_dns
}