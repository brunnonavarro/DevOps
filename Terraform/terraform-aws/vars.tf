variable "images" {
    type = map

    default = {
        "ubuntu-server-us-east-1" = "ami-0747bdcabd34c712a"
    }
  
}

variable "ssh-key" {
    type = map

    default = {
        "terraform-aws-local" = "terraform-aws"
    }
  
}