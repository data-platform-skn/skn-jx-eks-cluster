// ----------------------------------------------------------------------------
// Optional Variables
// ----------------------------------------------------------------------------
variable "region" {
  description = "AWS region code for creating resources."
  type = string
  default = "ap-south-1"
}

variable "cluster_version" {
  description = "Kubernetes version to use for the EKS cluster."
  type        = string
  default     = "1.18"
}

variable "vault_user" {
  description = "The AWS IAM Username whose credentials will be used to authenticate the Vault pods against AWS"
  type        = string
  default     = "aws-admin-ops"
}

variable "cluster_name" {
  description = "Name of the Kubernetes cluster to create"
  type        = string
  default     = "jx-eks-skn"
}

variable "force_destroy" {
  description = "Flag to determine whether storage buckets get forcefully destroyed. If set to false, empty the bucket first in the aws s3 console, else terraform destroy will fail with BucketNotEmpty error"
  type        = bool
  default     = true
}

variable "is_jx2" {
  default     = false
  type        = bool
  description = "Flag to specify if jx2 related resources need to be created"
}

variable "jx_git_url" {
  description = "URL for the Jenins X cluster git repository"
  type        = string
  default     = "https://github.com/data-platform-skn/skn-jx-cluster-git.git"
}

variable "jx_bot_username" {
  description = "Bot username used to interact with the Jenkins X cluster git repository"
  type        = string
  default     = "nikhil-bora"
}

variable "jx_bot_token" {
  description = "Bot token used to interact with the Jenkins X cluster git repository"
  type        = string
  default     = "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"
}
