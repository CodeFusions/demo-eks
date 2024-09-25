output "node_group_id" {
  description = "The ID of the EKS Node Group"
  value       = aws_eks_node_group.this.id
}

output "node_group_arn" {
  description = "The ARN of the EKS Node Group"
  value       = aws_eks_node_group.this.arn
}

output "node_group_status" {
  description = "Status of the EKS Node Group"
  value       = aws_eks_node_group.this.status
}

output "node_group_role_arn" {
  description = "The ARN of the IAM role for the EKS Node Group"
  value       = aws_iam_role.eks_node_group.arn
}
