resource "null_resource" "null" {
  count = 10
}

resource "null_resource" "null1" {
  count=10
}

resource "null_resource" "fruits" {
  count= length(var.fruits)

  provisioner "local-exec" {
    command = "echo ${var.fruits[count.index]}"
  }
}

variable "fruits" {
  default = ["apple", "banana", "grape"]
}