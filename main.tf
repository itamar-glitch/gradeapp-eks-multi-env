module "vpc" {
  source = "./modules/vpc"

  env                = var.env
  vpc_cidr           = var.vpc_cidr
  vpc_cidr_private_zone1 = var.vpc_cidr_private_zone1
  vpc_cidr_private_zone2 = var.vpc_cidr_private_zone2
  vpc_cidr_public_zone1  = var.vpc_cidr_public_zone1
  vpc_cidr_public_zone2  = var.vpc_cidr_public_zone2
  zone1              = var.zone1
  zone2              = var.zone2
  eks_name           = var.eks_name
}

module "eks" {
  source = "./modules/eks"

  env              = var.env
  eks_name         = var.eks_name
  eks_version      = var.eks_version
  vpc_id           = module.vpc.vpc_id
  private_subnet_ids = [module.vpc.private_subnet_zone1_id, module.vpc.private_subnet_zone2_id]
  public_subnet_ids  = [module.vpc.public_subnet_zone1_id, module.vpc.public_subnet_zone2_id]
}

module "nodes" {
  source = "./modules/nodes"

  env         = var.env
  eks_name    = var.eks_name
  cluster_name = module.eks.cluster_name
  eks_version = var.eks_version
  subnet_ids   = [module.vpc.private_subnet_zone1_id, module.vpc.private_subnet_zone2_id]
  node_instance_type = var.node_instance_type
  node_desired_size  = var.node_desired_size
  node_min_size      = var.node_min_size
  node_max_size      = var.node_max_size
}