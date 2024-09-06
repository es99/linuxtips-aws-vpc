output "ssm-vpc-id" {
  value = module.groundwork.ssm_vpc_id
}

output "ssm-private-subnet-2a" {
  value = module.groundwork.ssm_private_subnet-2a
}

output "ssm_private_subnet-2b" {
  value = module.groundwork.ssm_private_subnet-2b
}

output "ssm-private-subnet-2c" {
  value = module.groundwork.ssm_private_subnet-2c
}

output "ssm_public_subnet-2a" {
  value = module.groundwork.ssm_public_subnet-2a
}

output "ssm_public_subnet-2b" {
  value = module.groundwork.ssm_public_subnet-2b
}

output "ssm_public_subnet-2c" {
  value = module.groundwork.ssm_public_subnet-2c
}

output "ssm_database_subnet-2a" {
  value = module.groundwork.ssm_database_subnet-2a
}

output "ssm_database_subnet-2b" {
  value = module.groundwork.ssm_database_subnet-2b
}

output "ssm_database_subnet-2c" {
  value = module.groundwork.ssm_database_subnet-2c
}

output "data_vpc_id" {
  value = module.ecs-cluster.data_vpc_id
}

output "data_public_subnet_2a" {
  value = module.ecs-cluster.data_public_subnet_2a
}

output "data_public_subnet_2b" {
  value = module.ecs-cluster.data_public_subnet_2b
}

output "data_public_subnet_2c" {
  value = module.ecs-cluster.data_public_subnet_2c
}

output "data_private_subnet_2a" {
  value = module.ecs-cluster.data_private_subnet_2a
}

output "data_private_subnet_2b" {
  value = module.ecs-cluster.data_private_subnet_2b
}

output "data_private_subnet_2c" {
  value = module.ecs-cluster.data_private_subnet_2c
}