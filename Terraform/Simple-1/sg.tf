resource "aws_security_group" "instance" {
  name = "terraform-example-instance"
  ingress {
    from_port = 0
    to_port = 0
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
}