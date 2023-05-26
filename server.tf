resource "aws_instance" "frontend" {
  ami           = "ami-0b5a2b5b8f2be4ec2" # us-west-2
  instance_type = "t2.micro"

  tags = {
    Name = "frontend"
  }
}

output "public_ip" {
  value = aws_instance.frontend.public_ip
}

output "private_ip" {
  value = aws_instance.frontend.private_ip
}