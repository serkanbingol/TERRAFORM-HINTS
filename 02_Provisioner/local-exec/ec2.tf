

resource "aws_instance" "variable_web" {
   ami = "ami-bbc542c8"
   instance_type = "t2.micro"
   security_groups = ["${aws_security_group.variable_sg.name}"]
   key_name = "remoteconnection"

   tags {
      Name = "local-exec"
  }

  provisioner "local-exec" {
   command = "echo ${aws_instance.variable_web.public_ip} >> infra_info.txt"
  }

}
