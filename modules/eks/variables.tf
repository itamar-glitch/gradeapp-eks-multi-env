variable "env" {
  description = "Environment name (e.g., staging, production)"
  type        = string
}
variable "eks_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "eks_version" {
  description = "EKS cluster version"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs"
  type        = list(string)
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs"
  type        = list(string)
}
