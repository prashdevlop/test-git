resource "aws_instance" "example" {
  ami = "ami-0ad42f4f66f6c1cc9"
  instance_type = "t2.micro"
  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF
  security_groups = ["terraform-example-instance"]
  tags {
    Name = "terraform-example"
  }
}