variable "env" {
  description = "Environment name (e.g., staging, production)"
  type        = string
}

variable "eks_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "eks_version" {
  description = "EKS cluster version"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the node group"
  type        = list(string)
}

variable "node_instance_type" {
  description = "Instance type for the nodes"
  type        = string
}

variable "node_desired_size" {
  description = "Desired number of nodes in the node group"
  type        = number
}

variable "node_min_size" {
  description = "Minimum number of nodes in the node group"
  type        = number
}

variable "node_max_size" {
  description = "Maximum number of nodes in the node group"
  type        = number
}

