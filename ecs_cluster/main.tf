module "ecs-cluster" {
  source = "../../linuxtips-ecs/ecs-cluster-module"

  project_name                   = var.project_name
  ssm_vpc_id                     = var.ssm_vpc_id
  ssm_public_subnet_2a           = var.ssm_public_subnet_2a
  ssm_public_subnet_2b           = var.ssm_public_subnet_2b
  ssm_public_subnet_2c           = var.ssm_public_subnet_2c
  ssm-private-subnet-2a          = var.ssm-private-subnet-2a
  ssm-private-subnet-2b          = var.ssm-private-subnet-2b
  ssm-private-subnet-2c          = var.ssm-private-subnet-2c
  load_balancer_internal         = var.load_balancer_internal
  load_balancer_type             = var.load_balancer_type
  nodes_ami                      = var.nodes_ami
  node_instance_type             = var.node_instance_type
  node_volume_size               = var.node_volume_size
  node_volume_type               = var.node_volume_type
  cluster_on_demand_min_size     = var.cluster_on_demand_min_size
  cluster_on_demand_max_size     = var.cluster_on_demand_max_size
  cluster_on_demand_desired_size = var.cluster_on_demand_desired_size
  cluster_spot_min_size          = var.cluster_spot_min_size
  cluster_spot_max_size          = var.cluster_spot_max_size
  cluster_spot_desired_size      = var.cluster_spot_desired_size
}