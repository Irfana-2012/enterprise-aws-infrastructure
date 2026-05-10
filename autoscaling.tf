resource "aws_launch_template" "web_lt" {
  name_prefix   = "web-launch-template"
  image_id      = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"
  key_name      = "enterprise-key"

  vpc_security_group_ids = [
    aws_security_group.web_sg.id
  ]

  user_data = base64encode(<<EOF
#!/bin/bash
dnf update -y
dnf install nginx -y
systemctl enable nginx
systemctl start nginx
echo "<h1>Enterprise Web Server</h1>" > /usr/share/nginx/html/index.html
EOF
  )

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "autoscaling-web-server"
    }
  }
}

resource "aws_autoscaling_group" "web_asg" {
  desired_capacity = 2
  max_size         = 4
  min_size         = 2

  vpc_zone_identifier = [
    aws_subnet.private_app_1.id,
    aws_subnet.private_app_2.id
  ]

  target_group_arns = [
    aws_lb_target_group.web_tg.arn
  ]

  health_check_type = "EC2"

  launch_template {
    id      = aws_launch_template.web_lt.id
    version = "$Latest"
  }

  tag {
    key                 = "Name"
    value               = "autoscaling-web-server"
    propagate_at_launch = true
  }
}