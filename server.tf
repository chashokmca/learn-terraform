data "aws_ami" "centos" {
  owners = ["973714476881"]
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
}

resource "aws_instance" "frontend" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t2.micro"

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  name    = "frontend-dev.adevops72.online"
  type    = "A"
  zone_id = "Z064328134L0JD7T8XRZ9"
  ttl = 30
  records = [aws_instance.frontend.private_ip]
}

output "public_ip" {
  value = aws_instance.frontend.public_ip
}

output "private_ip" {
  value = aws_instance.frontend.private_ip
}