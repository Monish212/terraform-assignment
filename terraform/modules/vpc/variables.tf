# Variables for VPC and Subnets

# CIDR block for the VPC
variable "vpc_cidr_block" {
  type        = string
  description = "CIDR block for the VPC"
}

# A list of availability zones where subnets should be created
variable "availability_zones" {
  description = "A list of availability zones where subnets should be created."
  type        = list(string)
}

# A list of CIDR blocks for the public subnets
variable "public_subnet_cidr_blocks" {
  description = "A list of CIDR blocks for the public subnets."
  type        = list(string)
}

# A list of CIDR blocks for the private subnets
variable "private_subnet_cidr_blocks" {
  description = "A list of CIDR blocks for the private subnets."
  type        = list(string)
}

# Indicates whether instances launched in the subnet should be assigned a public IP
variable "map_public_ip_on_launch" {
  type        = bool
  description = "Indicates whether instances launched in the subnet should be assigned a public IP."
  default     = false
}

# Name for the resources
variable "name" {
  description = "Name for the resources"
  type        = string
  default     = "example"  # You can change the default value as needed
}

# Tags for the private route table
variable "private_route_table_tags" {
  description = "Tags for the private route table"
  type        = map(string)
  default     = {
    Name = "private-route-table"
  }
}
