resource "aws_instance" "example" {
  ami = "ami-0ad42f4f66f6c1cc9"
  instance_type = "t2.micro"
  tags {
    Name = "terraform-example"
  }
}