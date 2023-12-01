# AWS Application Load Balancer
resource "aws_lb" "my_alb" {
  name                       = var.alb_name
  internal                   = false
  load_balancer_type         = "application"
  subnets                    = var.subnets
  enable_deletion_protection = false
  enable_http2               = true
  security_groups            = [aws_security_group.my_security_group.id]
}

# Listener Configuration for ALB
resource "aws_lb_listener" "web" {
  load_balancer_arn = aws_lb.my_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/plain"
      status_code  = "200"
    }
  }
}

# Target Group for ALB
resource "aws_lb_target_group" "my_target_group" {
  name        = "my-target-group"
  port        = 80
  protocol    = "HTTP"
  target_type = "instance"
  vpc_id      = var.vpc_id
}

# Listener Rule for ALB
resource "aws_lb_listener_rule" "web" {
  listener_arn = aws_lb_listener.web.arn

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.my_target_group.arn
  }

  condition {
    path_pattern {
      values = ["/"]
    }
  }
}

# Security Group for ALB
resource "aws_security_group" "my_security_group" {
  name_prefix = var.security_group_name_prefix
  vpc_id      = var.vpc_id
}
