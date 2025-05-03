variable "env" {
  description = "Environment name (e.g., staging, production)"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "vpc_cidr_private_zone1" {
  description = "CIDR block for private subnet in zone1"
  type        = string
}

variable "vpc_cidr_private_zone2" {
  description = "CIDR block for private subnet in zone2"
  type        = string
}

variable "vpc_cidr_public_zone1" {
  description = "CIDR block for public subnet in zone1"
  type        = string
}

variable "vpc_cidr_public_zone2" {
  description = "CIDR block for public subnet in zone2"
  type        = string
}

variable "zone1" {
  description = "First availability zone"
  type        = string
}

variable "zone2" {
  description = "Second availability zone"
  type        = string
}

variable "eks_name" {
  description = "Name of the EKS cluster"
  type        = string
}
