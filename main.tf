resource "aws_instance" "app" {
  ami           = "ami-003e7cf4a21db7053"
  instance_type = "t3.nano"  # adjust as needed

  tags = {
    Name = "Windows-EKS-Optimized-Server"
  }
}
