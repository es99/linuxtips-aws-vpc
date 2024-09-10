variable "project_name" {
  type        = string
  default     = "linuxtips-ecs-cluster"
  description = "Variable for identify the actual project"
}

variable "ssm_vpc_id" {
  type = string
}

variable "ssm_public_subnet_2a" {
  type = string
}

variable "ssm_public_subnet_2b" {
  type = string
}

variable "ssm_public_subnet_2c" {
  type = string
}

variable "ssm-private-subnet-2a" {
  type = string
}

variable "ssm-private-subnet-2b" {
  type = string
}

variable "ssm-private-subnet-2c" {
  type = string
}

#### Balancer ####
variable "load_balancer_internal" {
  type = bool
}

variable "load_balancer_type" {
  type = string
}

##### ECS General #####

variable "nodes_ami" {
  type = string
}

variable "node_instance_type" {
  type = string
}

variable "node_volume_size" {
  type = string
}

variable "node_volume_type" {
  type = string
}

variable "cluster_on_demand_min_size" {
  type = string
}

variable "cluster_on_demand_max_size" {
  type = string
}

variable "cluster_on_demand_desired_size" {
  type = string
}

##### Spot Instances #####

variable "cluster_spot_min_size" {}

variable "cluster_spot_max_size" {}

variable "cluster_spot_desired_size" {}