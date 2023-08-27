terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "2.3.0"
    }
  }
}



resource "random_string" "this" {
  length  = 5
  special = false
  upper   = false
}

output "resource_code" {
  value = random_string.this.result
  sensitive = false
}
