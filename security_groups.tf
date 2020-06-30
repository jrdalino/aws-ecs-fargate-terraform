# Allow Fargate Containers to receive HTTP/HTTPS/SSH traffic IN and any traffic OUT
resource "aws_security_group" "sg_for_fargate_containers" {
  name_prefix = "${var.aws_ecs_cluster_name}_sg_for_fargate_containers_"
  description = "Access to the fargate containers from the Internet"
  vpc_id      = var.aws_vpc_id
  lifecycle {
    create_before_destroy = true
  }
  
  tags = {
    Name = var.aws_ecs_cluster_name
  }
}

resource "aws_security_group_rule" "all_traffic" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["10.0.0.0/16"]
  security_group_id = aws_security_group.sg_for_fargate_containers.id
}

resource "aws_security_group_rule" "allow_egress_all" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.sg_for_fargate_containers.id  
}
