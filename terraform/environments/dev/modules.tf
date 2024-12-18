module "network" {
  source = "../../modules/network"

  cluster_name = var.cluster_name
  region       = var.region
}

module "cluster" {
  source = "../../modules/cluster"

  cluster_name = var.cluster_name
  role_arn     = var.role_arn

  vpc_id            = module.network.vpc_id
  private_subnet_1a = module.network.private_subnet_1a
  private_subnet_1b = module.network.private_subnet_1b

  depends_on = [module.network]
}

module "node" {
  source = "../../modules/node"

  cluster_name = module.cluster.cluster_name
  role_arn     = var.role_arn

  private_subnet_1a = module.network.private_subnet_1a
  private_subnet_1b = module.network.private_subnet_1b

  node_max_size     = var.node_max_size
  node_min_size     = var.node_min_size
  node_desired_size = var.node_desired_size

  depends_on = [module.cluster]
}
