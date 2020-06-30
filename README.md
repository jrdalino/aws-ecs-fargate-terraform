# Terraform module to provision an AWS ECS Cluster using Fargate Launch Type

## This creates the following resources:
- ECS Cluster
- Security Group
- ECS Service Role
- ECS Service Role Policy
- ECS Task Role
- ECS Task Role Policy

## Prerequisites
- Provision an S3 bucket to store Terraform State and DynamoDB for state-lock using https://github.com/jrdalino/aws-tfstate-backend-terraform

## Usage
- Replace variables in state_config.tf
- Replace variables in terraform.tfvars
- Initialize, Review Plan and Apply
```
$ terraform init
$ terraform plan
$ terraform apply
```

## Inputs
| Name | Description |
|------|-------------|
| | |

## Outputs
| Name | Description |
|------|-------------|
| | |

## (In progress) Terraform Module Usage
Include this repository as a module in your existing terraform code:
```
module "ecs-fargate" {
  source = "git::https://github.com/jrdalino/aws-ecs-fargate-terraform.git?ref=master"
}
```

## References