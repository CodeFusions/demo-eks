provider "aws" {
  region = var.aws_region
}

module "eks" {
  source = "./modules/eks"

  cluster_name       = var.cluster_name
  cluster_version    = var.cluster_version
  vpc_id             = var.vpc_id
  private_subnet_ids = split(",", var.private_subnet_ids)
  public_subnet_ids  = split(",", var.public_subnet_ids)
}

module "node_groups" {
  source = "./modules/node_groups"

  cluster_name       = var.cluster_name
  node_group_name    = var.node_group_name
  private_subnet_ids = split(",", var.private_subnet_ids)
  desired_capacity   = var.node_group_desired_capacity
  max_size           = var.node_group_max_size
  min_size           = var.node_group_min_size
  instance_types     = [var.node_group_instance_types]

  depends_on = [module.eks]
}
