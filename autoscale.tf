# Auto Scaling Group
resource "aws_autoscaling_group" "web_asg" {
  launch_template = {
    id      = aws_launch_template.web_launch_template.id
    version = "$Latest"
  }
  min_size         = 1
  max_size         = 3
  desired_capacity = 1
  vpc_zone_identifier = [
    aws_subnet.public_subnet_a.id,
    aws_subnet.public_subnet_b.id
  ]
  tags = [
    {
      key                 = "Name"
      value               = "web-instance"
      propagate_at_launch = true
    }
  ]
}
