/*resource "null_resource" "null" {
  count = 10
}

resource "null_resource" "null1" {
  count=10
}

resource "null_resource" "fruits" {
  count = length(var.fruits)

  provisioner "local-exec" {
    command = "echo ${var.fruits[count.index]}"
  }
}

variable "fruits" {
  default = ["apple", "banana", "grape"]
}

variable "fruits1" {
  default = {
    apple=100
    banana=200
    grape=500
  }
}

resource "null_resource" "fruits1" {
  for_each = var.fruits1

  provisioner "local-exec" {
    command = "echo ${each.key} ----  ${each.value}"
  }
}*/

variable "fruits2" {
  default = {
    apple={
      name= {
        first="Ashok"
        middle="Kumar"
        last="Chaganti"
      }
      count=100
    }
    banana= {
      name= {
        first="Rajya"
        middle="Lakshmi"
        last="Chaganti"
      }
      count=200
    }
    grape= {
      name= {
        first="Mokshagna"
        middle="Sai"
        last="Chaganti"
      }
      count = 300
    }
  }
}

resource "null_resource" "fruits2" {
  for_each = var.fruits2

  provisioner "local-exec" {
    command = "echo ${each.value["name"]["first"]}  -----  ${each.value["count"]}"
  }
}

