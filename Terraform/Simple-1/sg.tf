resource "aws_security_group" "instance" {
  name = "terraform-example-instance"
  ingress {
    from_port = 80
    to_port = 80
    protocol = "http"
    cidr_blocks = ["0.0.0.0/0"]
  }
}