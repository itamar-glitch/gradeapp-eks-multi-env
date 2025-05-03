output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "vpc_cidr" {
  description = "The CIDR block of the VPC"
  value       = aws_vpc.main.cidr_block
}

output "private_subnet_zone1_id" {
  description = "The ID of the private subnet in zone1"
  value       = aws_subnet.private_zone1.id
}

output "private_subnet_zone2_id" {
  description = "The ID of the private subnet in zone2"
  value       = aws_subnet.private_zone2.id
}

output "public_subnet_zone1_id" {
  description = "The ID of the public subnet in zone1"
  value       = aws_subnet.public_zone1.id
}

output "public_subnet_zone2_id" {
  description = "The ID of the public subnet in zone2"
  value       = aws_subnet.public_zone2.id
} 