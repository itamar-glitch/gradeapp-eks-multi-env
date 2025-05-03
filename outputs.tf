output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "private_subnet_ids" {
  description = "List of private subnet IDs"
  value       = [module.vpc.private_subnet_zone1_id, module.vpc.private_subnet_zone2_id]
}

output "public_subnet_ids" {
  description = "List of public subnet IDs"
  value       = [module.vpc.public_subnet_zone1_id, module.vpc.public_subnet_zone2_id]
} 