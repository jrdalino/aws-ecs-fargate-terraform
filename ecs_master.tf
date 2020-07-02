# ECS Cluster
resource "aws_ecs_cluster" "this" {
  name = var.aws_ecs_cluster_name

  capacity_providers = ["FARGATE", "FARGATE_SPOT"]

  default_capacity_provider_strategy {
    capacity_provider = "FARGATE_SPOT"
    weight            = "100"
    base              = "1"
  }  

  setting {
    name  = "containerInsights"
    value = "enabled"
  }

  depends_on = [
    aws_cloudwatch_log_group.this,
  ]
}