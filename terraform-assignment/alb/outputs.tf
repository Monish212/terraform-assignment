# Outputs for AWS Application Load Balancer (ALB)

# ID of the Application Load Balancer
output "alb_id" {
  description = "ID of the Application Load Balancer"
  value       = aws_lb.my_alb.id
}

# DNS name of the Application Load Balancer
output "alb_dns_name" {
  description = "DNS name of the Application Load Balancer"
  value       = aws_lb.my_alb.dns_name
}

# ARN of the listener rule
output "alb_listener_rule_arn" {
  description = "ARN of the listener rule"
  value       = aws_lb_listener_rule.web.id
}
