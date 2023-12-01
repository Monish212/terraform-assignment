# Outputs for VPC and Subnets

# ID of the VPC
output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.my_vpc.id
}

# IDs of the public subnets
output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = aws_subnet.public[*].id
}

# List of public subnets
output "public_subnets" {
  description = "List of public subnets"
  value       = aws_subnet.public[*].id
}

# ID of the Internet Gateway
output "internet_gateway_id" {
  description = "ID of the Internet Gateway"
  value       = aws_internet_gateway.my_vpc_igw.id
}

# IDs of the private subnets
output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = aws_subnet.private[*].id
}

# List of private subnets
output "private_subnets" {
  description = "List of private subnets"
  value       = aws_subnet.private[*].id
}

# IDs of the NAT Gateways
output "nat_gateway_ids" {
  description = "IDs of the NAT Gateways"
  value       = aws_nat_gateway.my_nat_gateway[*].id
}

# IDs of the private route tables
output "private_route_table_id" {
  description = "IDs of the private route tables"
  value       = aws_route_table.private[*].id
}
