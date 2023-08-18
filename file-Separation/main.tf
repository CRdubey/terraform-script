resource "aws_instance" "myapp" {
  ami           = "ami-0df7a207adb9748c7"
  instance_type = "t2.micro"
  subnet_id     = data.aws_subnet.mysubnet.id
  tags = {
  Name = "new-Instances"
    }
}