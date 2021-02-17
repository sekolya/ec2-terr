resource "aws_ebs_volume" "example" {
  availability_zone = "us-east-1a"
  size              = 100
}
resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdi"
  volume_id   = aws_ebs_volume.example.id
  instance_id = aws_instance.Centos-6.id
}