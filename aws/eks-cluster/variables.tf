variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}
variable "kubernetes_version" {
  description = "The Kubernetes version to use for the EKS cluster"
  type        = string
  
}
variable "subnet_ids" {
  description = "The subnet IDs to use for the EKS cluster"
  type        = list(string)
}
variable "owner" {
  description = "The owner of the EKS cluster"
  type        = string
}
variable "fargate_profile_name" {
  description = "The name of the Fargate profile"
  type        = string
}
variable "namespace" {
  description = "The namespace to use for the Fargate profile"
  type        = string
}