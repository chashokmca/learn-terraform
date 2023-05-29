resource "null_resource" "nothing" {
  provisioner "local-exec" {
    command = "echo Hello from Module - Input - ${var.input}"
    command = "echo Hello from Module - name - ${var.name}"
  }
}

variable "input" {}
variable "name" {}
