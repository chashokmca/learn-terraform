resource "aws_instance" "frontend" {
  ami           = "ami-005e54dee72cc1d00" # us-west-2
  instance_type = "t2.micro"

  tags = {
    name = "frontend"
  }
}

output "public_ip" {
  value = aws_instance.frontend.public_ip
}

output "private_ip" {
  value = aws_instance.frontend.private_ip
}