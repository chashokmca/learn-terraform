data "aws_security_group" "selected" {
  id = "sg-0d5c740b322bfa5ca"
}

output "security_group" {
  value=data.aws_security_group.selected.id
}


data "aws_security_group" "select" {
  name = "allow-all"
}

output "security_group_sel" {
  value=data.aws_security_group.select
}

data "aws_security_groups" "groups" {}

output "aws_security_groups" {
  value = data.aws_security_groups.groups
}