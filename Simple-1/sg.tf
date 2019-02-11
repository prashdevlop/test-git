resource "aws_security_group" "instance" {
  name = "my_new_security_group"
  ingress {
    from_port = 80
    to_port = 80
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
}