data "aws_subnet" "mysubnet" {
  filter {
    name   = "tag:Name"
    values = [var.subnet_name]
  }
}