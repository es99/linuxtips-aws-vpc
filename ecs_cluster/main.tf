module "ecs-cluster" {
  source = "github.com/es99/ecs-cluster-module.git"

  project_name          = var.project_name
  ssm_vpc_id            = var.ssm_vpc_id
  ssm_public_subnet_2a  = var.ssm_public_subnet_2a
  ssm_public_subnet_2b  = var.ssm_public_subnet_2b
  ssm_public_subnet_2c  = var.ssm_public_subnet_2c
  ssm-private-subnet-2a = var.ssm-private-subnet-2a
  ssm-private-subnet-2b = var.ssm-private-subnet-2b
  ssm-private-subnet-2c = var.ssm-private-subnet-2c
}