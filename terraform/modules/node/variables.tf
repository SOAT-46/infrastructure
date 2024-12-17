variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "private_subnet_1a" {
  description = "The subnet ID of the private subnet 1a"
  type        = string
}

variable "private_subnet_1b" {
  description = "The subnet ID of the private subnet 1b"
  type        = string
}

variable "node_desired_size" {
  type = number
  description = "The node desired size for the EKS worknodes"
  default = 2
}

variable "node_max_size" {
  type = number
  description = "The node max size for the EKS worknodes"
  default = 4
}

variable "node_min_size" {
  type = number
  description = "The node min size for the EKS worknodes"
  default = 2
}

variable "nodes_max_unavailable" {
  type = number
  description = "The node max unavailable for the EKS worknodes"
  default = 1
}

variable "instance_type" {
  type        = string
  description = "The instance type for the EKS worknodes"
  default     = "t2.micro"
}

variable "role_arn" {
  description = "The ARN of the IAM role"
  type        = string
}
