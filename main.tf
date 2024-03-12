resource "aws_instance" "my_ec2" {
  ami                    = "ami-0f403e3180720dd7e"  # Replace with the AMI ID you wish to use
  instance_type          = "t2.micro"
  key_name               = "my-keypair"             # Replace with your key pair name
  subnet_id              = aws_subnet.my_subnet.id
  vpc_security_group_ids = [aws_security_group.my_security_group.id]

  tags = {
    Name = "MyEC2Instance"
  }
}
