# General
variable "aws_region" {
  type        = string
  description = "AWS Region."
} 

variable "aws_account" {
  type        = string
  description = "AWS Account."    
}

# Network
variable "aws_vpc_id" {
  type        = string
  description = "VPC ID"
}

# Security Groups

# ECS Cluster
variable "aws_ecs_cluster_name" {
  type        = string
  description = "ECS Cluster Name"
}

# IAM Roles
variable "ecs_service_role_name" {
  type        = string
  description = "ECS Service Role Name"
}

variable "ecs_service_role_policy_name" {
  type        = string
  description = "ECS Service Role Policy Name"
}

variable "ecs_task_role_name" {
  type        = string
  description = "ECS Task Role Name"
}

variable "ecs_task_role_policy_name" {
  type        = string
  description = "ECS Task Role Policy Name"
}
