
# provider "aws" {

#   region     = "us-west-2"
#   access_key = "Your-Access-Key"
#   secret_key = "Your-Secret-Key"
# }

# resource "aws_eip" "interpolation_eip" {
#    vpc      = true
# }

# resource "aws_security_group" "allow_all" {

#   name        = "interpolation-demo"

#   ingress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }


provider "aws" {

  region     = "us-west-2"
  access_key = "Your-Access-Key"
  secret_key = "Your-Secret-Key"
}

resource "aws_eip" "interpolation_eip" {
   vpc      = true
}

resource "aws_security_group" "allow_all" {

  name        = "interpolation-demo"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["${aws_eip.interpolation_eip.public_ip}/32"]
  }
}