# Launch Template
resource "aws_launch_template" "web_launch_template" {
  name          = "sao-paulo-web-launch-template"
  image_id      = "ami-0041213aea4f4236a" # valid AMI ID
  instance_type = "t2.micro"
  key_name      = "ff-demo1.pem"

  network_interfaces {
    associate_public_ip_address = true
    security_groups             = [aws_security_group.web_sg.id]
  }
  tags = {
    Name = "web-instance"
  }
}
