module "root" {
  source = "../.."
  
  env         = var.env
  region      = var.region
  zone1       = var.zone1
  zone2       = var.zone2
  eks_name    = var.eks_name
  eks_version = var.eks_version
  vpc_cidr    = var.vpc_cidr
  vpc_cidr_private_zone1    = var.vpc_cidr_private_zone1
  vpc_cidr_private_zone2    = var.vpc_cidr_private_zone2
  vpc_cidr_public_zone1    = var.vpc_cidr_public_zone1
  vpc_cidr_public_zone2    = var.vpc_cidr_public_zone2
  node_instance_type = "t3.small"
  node_desired_size  = 1
  node_min_size      = 1
  node_max_size      = 2
} 