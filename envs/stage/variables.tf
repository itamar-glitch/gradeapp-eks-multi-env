variable "env" {
  description = "Environment name (e.g., staging, production)"
  type        = string
}

variable "region" {
  description = "AWS region"
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

variable "eks_version" {
  description = "EKS cluster version"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
} 
variable "vpc_cidr_private_zone1" {
  description = "CIDR block for the VPC"
  type        = string
} 
variable "vpc_cidr_private_zone2" {
  description = "CIDR block for the VPC"
  type        = string
} 
variable "vpc_cidr_public_zone1" {
  description = "CIDR block for the VPC"
  type        = string
} 
variable "vpc_cidr_public_zone2" {
  description = "CIDR block for the VPC"
  type        = string
} 

variable "node_instance_type" {
  description = "CIDR block for the VPC"
  type        = string
} 
variable "node_desired_size" {
  description = "CIDR block for the VPC"
  type        = number
} 
variable "node_min_size" {
  description = "CIDR block for the VPC"
  type        = number
} 
variable "node_max_size" {
  description = "CIDR block for the VPC"
  type        = number
} 