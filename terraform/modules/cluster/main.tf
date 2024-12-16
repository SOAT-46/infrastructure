resource "aws_eks_cluster" "eks_cluster" {

  name     = var.cluster_name
  role_arn = var.role_arn
  version = var.cluster_version

  vpc_config {
    subnet_ids = [
      var.private_subnet_1a,
      var.private_subnet_1b
    ]
  }
}
