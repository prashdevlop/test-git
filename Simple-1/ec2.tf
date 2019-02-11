resource "aws_instance" "example" {
  ami = "ami-0ad42f4f66f6c1cc9"
  instance_type = "t2.micro"
  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install httpd -y
              service httpd start
              chkconfig httpd on
              EOF
  security_groups = ["terraform-example-instance"]
  tags {
    Name = "terraform-example"
  }
}