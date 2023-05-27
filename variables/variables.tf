variable "sample_name" {
  default = "Ashok"
}

variable "sample_age" {
  default = 40
}

variable "sample_check" {
  default = true
}

variable "sample_list" {
  default = [100, true, "Ashok"]
}

variable "sample_dict" {
  default = { age = 100, check=true, name="Ashok"}
}

variable "env" {}
variable "age" {}
variable "status" {}