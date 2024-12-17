variable "region" {
  description = "The region of the EKS cluster"
  type        = string
  default     = "us-east-1"
}

variable "profile" {
  description = "The AWS profile"
  type        = string
  default     = "default"
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "fastfood-cluster"
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

variable "node_desired_size" {
  type = number
  description = "The node desired size for the EKS worknodes"
  default = 2
}

variable "role_arn" {
  description = "The ARN of the IAM role"
  type        = string
}
