output "data_vpc_id" {
  value     = module.ecs-cluster.data_vpc_id
  sensitive = true
}

output "data_public_subnet_2a" {
  value     = module.ecs-cluster.data_public_subnet_2a
  sensitive = true
}

output "data_public_subnet_2b" {
  value     = module.ecs-cluster.data_public_subnet_2b
  sensitive = true
}

output "data_public_subnet_2c" {
  value     = module.ecs-cluster.data_public_subnet_2c
  sensitive = true
}

output "data_private_subnet_2a" {
  value     = module.ecs-cluster.data_private_subnet_2a
  sensitive = true
}

output "data_private_subnet_2b" {
  value     = module.ecs-cluster.data_private_subnet_2b
  sensitive = true
}

output "data_private_subnet_2c" {
  value     = module.ecs-cluster.data_private_subnet_2c
  sensitive = true
}

output "aws_lb_dns" {
  value = module.ecs-cluster.aws_lb_dns
}

output "ssm_lb_arn_id" {
  value = module.ecs-cluster.ssm_aws_lb_id
}

output "ssm_lb_listener_arn_id" {
  value = module.ecs-cluster.ssm_aws_lb_listener_id
}