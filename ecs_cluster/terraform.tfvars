#### SSM VPC Parameters ####

ssm_vpc_id = "/linuxtips-aws-containers/vpc/vpc_id"

ssm_public_subnet_2a = "/linuxtips-aws-containers/vpc/public_subnet_2a"

ssm_public_subnet_2b = "/linuxtips-aws-containers/vpc/public_subnet_2b"

ssm_public_subnet_2c = "/linuxtips-aws-containers/vpc/public_subnet_2c"

ssm-private-subnet-2a = "/linuxtips-aws-containers/vpc/private_subnet_2a"

ssm-private-subnet-2b = "/linuxtips-aws-containers/vpc/private_subnet_2b"

ssm-private-subnet-2c = "/linuxtips-aws-containers/vpc/private_subnet_2c"

#### Balancer ####
load_balancer_internal = false
load_balancer_type     = "application"

#### ECS General ####
nodes_ami = "ami-016a03fa55f726b2d"

node_instance_type = "t3a.large"

node_volume_size = "50"

node_volume_type = "gp3"

#### On Demand Instances ####

cluster_on_demand_min_size     = 2
cluster_on_demand_max_size     = 4
cluster_on_demand_desired_size = 3

#### Spot Instances ####

cluster_spot_min_size = 2

cluster_spot_max_size = 4

cluster_spot_desired_size = 3