module "cluster" {
  source = "../../modules/cluster"

  account_id   = var.account_id
  cluster_name = var.cluster_name
  role_arn     = data.aws_iam_role.labrole.arn

  vpc_id  = data.aws_vpc.vpc.id
  subnets = [for subnet in data.aws_subnet.subnet : subnet.id if subnet.availability_zone != "${var.region}e"]
}

module "node" {
  source = "../../modules/node"

  cluster_name = module.cluster.cluster_name
  role_arn     = data.aws_iam_role.labrole.arn

  subnets = [for subnet in data.aws_subnet.subnet : subnet.id]

  node_max_size     = var.node_max_size
  node_min_size     = var.node_min_size
  node_desired_size = var.node_desired_size

  depends_on = [module.cluster]
}
