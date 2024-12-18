variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "cluster_version" {
  description = "The version of the EKS cluster"
  type        = string
  default = "1.31"
}

variable "private_subnet_1a" {
  description = "The subnet ID of the private subnet 1a"
  type        = string
}

variable "private_subnet_1b" {
  description = "The subnet ID of the private subnet 1b"
  type        = string
}

variable "role_arn" {
  description = "The ARN of the IAM role"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID for the cluster"
  type = string
}

variable "cidr" {
  description = "The CIDR for ingress and egress"
  type = string
  default = "0.0.0.0/0"
}
