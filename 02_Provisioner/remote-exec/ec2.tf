

resource "aws_instance" "variable_web" {
   ami = "ami-bbc542c8"
   instance_type = "t2.micro"
   security_groups = ["${aws_security_group.variable_sg.name}"]
   key_name = "remoteconnection"

   tags {
      Name = "web-server"
  }

  provisioner "remote-exec" {
    inline = [
     "yes | sudo apt-get update",
     "yes | sudo apt-get install nginx",
     "sudo ufw disable"

    ]
    connection {
      type = "ssh"
      user = "ubuntu"
      private_key = "${file("./remoteconnection.pem")}"

    }
  }

}
