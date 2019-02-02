
variable "instance_type" {
  type = "map"

  default = {
    default = "t2.nano"
    test    = "t2.micro"
    prod     = "t2.medium"
  }
}
