# Output for AWS Security Group

output "security_group_id" {
  # Description of the output
  description = "ID of the Security Group"
  
  # Value to be displayed as output
  value       = aws_security_group.my_security_group.id
}
