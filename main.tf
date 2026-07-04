resource "aws_instance" "ubuntu_server" {
  #ami           = "ami-003e7cf4a21db7053"
  ami           = "ami-0b6d9d3d33ba97d99"
  instance_type = "t3.micro"  # adjust as needed

  tags = {
    Name = "Ubuntu Server 26.04 LTS"
  }
}
