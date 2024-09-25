output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ID attached to the EKS cluster"
  value       = module.eks.cluster_security_group_id
}

output "cluster_iam_role_arn" {
  description = "IAM role ARN of the EKS cluster"
  value       = module.eks.cluster_iam_role_arn
}

output "node_group_id" {
  description = "ID of the EKS node group"
  value       = module.node_groups.node_group_id
}

output "node_group_arn" {
  description = "ARN of the EKS node group"
  value       = module.node_groups.node_group_arn
}

output "node_group_status" {
  description = "Status of the EKS node group"
  value       = module.node_groups.node_group_status
}

output "node_group_role_arn" {
  description = "IAM role ARN for EKS node group"
  value       = module.node_groups.node_group_role_arn
}
