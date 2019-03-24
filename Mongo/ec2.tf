resource "aws_instance" "example" {
  ami = "${var.my_ami}"
  instance_type = "t2.micro"
  key_name = "terraform"

  #key_name = "${var.key_name}"

  #count=3
  provisioner "file" {
    source      = "docker-compose.yml"
    destination = "/home/ec2-user/docker-compose.yml"
  }

  provisioner "file" {
    source      = "/root/user.txt"
    destination = "/home/ec2-user/user.txt"
  }

  provisioner "file" {
    source      = "/root/password.txt"
    destination = "/home/ec2-user/password.txt"
  }
  #Assign a pre-created security group
  security_groups = ["DMZ"]

  # We run a remote provisioner on the instance after creating it.
  # In this case, we just install nginx and start it. By default,
  # this should be on port 80
  #user_data = "${file("userdata.sh")}"
  user_data = "${data.template_file.user_data.rendered}"
  #user_data = <<-EOF
  #            #!/bin/bash
  #            yum update -y
  #            yum install httpd -y
  #            service httpd start
  #            chkconfig httpd on
  #            EOF
  #security_groups = ["terraform-example-instance"]
  tags {
    Name = "${var.tag_name}"
  }
}

data "template_file" "user_data" {
  template = "${file("user_data.tpl")}"
}