resource "aws_instance" "ec2_vm" {
  ami           = "ami-02384a901b5df8024"
  instance_type = "t3.micro"
  key_name      = "myriam-abdallah-key"

  tags = {
    Name = "myriam1.aballah@etu.u-pec.fr"
  }
  
  vpc_security_group_ids = ["${aws_security_group.default.id}"]  
}

# Default ec2 user is "ec2-user"
