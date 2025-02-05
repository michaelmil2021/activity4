resource "aws_instance" "mikeec2" {
  ami           = "ami-0c614dee691cbbf37"
  instance_type = "t2.micro"
  key_name      = "MikeKey"
  subnet_id     = aws_subnet.subnet1.id
  vpc_security_group_ids = [
    aws_security_group.mikesg.id
  ]

  tags = {
    Name = "mikeec2"
  }

}
