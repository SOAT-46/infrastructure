variable "region" {
  description = "The region of the EKS cluster"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "fastfood-cluster"
}

variable "node_max_size" {
  type        = number
  description = "The node max size for the EKS worknodes"
  default     = 4
}

variable "node_min_size" {
  type        = number
  description = "The node min size for the EKS worknodes"
  default     = 2
}

variable "node_desired_size" {
  type        = number
  description = "The node desired size for the EKS worknodes"
  default     = 2
}

variable "cidr" {
  description = "The CIDR for ingress and egress"
  type        = string
  default     = "0.0.0.0/0"
}
