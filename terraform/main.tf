resource "aws_instance" "devops" {
  count         = 2
  ami           = "ami-xxxxxxxx" # Ubuntu AMI
  instance_type = "t3.small"

  tags = {
    Name = "devops-instance-${count.index}"
  }
}
