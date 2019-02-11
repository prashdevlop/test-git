resource "aws_security_group" "instance" {
  name = "${var.my_sg}"
  ingress {
    from_port = 80
    to_port = 0
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
}