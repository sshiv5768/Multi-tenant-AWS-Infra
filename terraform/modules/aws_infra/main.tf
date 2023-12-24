resource "aws_security_group" "state_ec2_sg" {
  name = "${var.az_name}-ec2-sg"

  ingress = [{
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
    prefix_list_ids = []
    description = ""
    security_groups = []
    self = false
  }]

  egress = [{
   from_port = 80
   to_port = 80
   protocol = "tcp"
   cidr_blocks = ["0.0.0.0/0"]
   ipv6_cidr_blocks = []
   prefix_list_ids = []
   description = ""
   security_groups = []
   self = false
  }]

}

resource "aws_instance" "state_ec2" {
  ami = "ami-08fe36427228eddc4"
  instance_type = "t2.micro"
  availability_zone = var.az_name
  ebs_block_device {
    volume_type = "gp3"
    volume_size = 15
    device_name = "/dev/sdf"
  }
  vpc_security_group_ids = [aws_security_group.state_ec2_sg.id]

  tags = {
    Name = "ec2-${var.az_name}"
  }
}

resource "aws_s3_bucket" "state_s3_bucket" {
  bucket = "s3-${var.az_name}-files"
}
