data "aws_ami" "app_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["Windows_Server-2025-English-Core-EKS_Optimized-1.35-2026.04.18"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["687402702948"] # Bitnami
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t3.nano"

  tags = {
    Name = "HelloWorld"
  }
}
