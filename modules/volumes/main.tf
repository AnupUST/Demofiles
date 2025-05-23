resource "aws_ebs_volume" "ebsvolume" {
  availability_zone = "us-east-1a"
  size              = 40

  tags = {
    Name = "data volume"
  }
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.ebsvolume.id
  instance_id = aws_instance.demo.id
  stop_instance_before_detaching = true
}