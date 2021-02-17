resource "aws_instance" "Centos-6" {
  ami                         = "ami-e3fdd999"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.deployer2.key_name
  iam_instance_profile        = aws_iam_instance_profile.terraform_admin_profile.name
  associate_public_ip_address = true
  availability_zone           = "us-east-1a"
  
  tags = {
    "Name" = "Task2"
  }
}
resource "aws_eip" "lb" {
  instance = aws_instance.Centos-6.id
  vpc      = true
}

