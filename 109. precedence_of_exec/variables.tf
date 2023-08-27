

variable variable_one {
  description = "first variable"
  type = string
}

variable variable_two {
    description = "second variable"
    type = string
}

variable secret_var {
    description = "secret var"
    type = string
}

variable "test_default_value" {
  type = string
  description = "(optional) describe your variable"
  default = "val1"
}