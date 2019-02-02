resource "aws_instance" "myweb" {
   ami = "ami-bbc542c8"
   instance_type = "${lookup(var.instance_type, terraform.workspace)}"
   security_groups = ["default"]

   tags {
      Name = "web-server"
  }

}



