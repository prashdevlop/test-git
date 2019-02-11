resource "aws_security_group" "instance" {
  name = "${my_dmz}"
  ingress {
    from_port = 80
    to_port = 80
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
}