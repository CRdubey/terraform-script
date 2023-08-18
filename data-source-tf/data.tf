data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["137112412989"]

filter {
  name   = "name"
  values = ["al2023-ami-2023.1.20230809.0-kernel-6.1-x86_64"]
}
filter {
  name   = "root-device-type"
  values = ["ebs"]
}
filter {
  name   = "virtualization-type"
  values = ["hvm"]
}
}
output "ami-id" {
  value = data.aws_ami.ubuntu.id
}


resource "aws_instance" "server1" {
ami           = data.aws_ami.ubuntu.id
instance_type = "t2.micro"
tags = {
 Name = "ServerInstance"
}
} 