module "groundwork" {
  source = "./modules/groundwork"

  vpc_name        = "linuxtips-aws-containers"
  vpc_environment = "dev"
  vpc_owner       = "engels.souza"
  vpc_region      = "us-east-2"
}

module "ecs-cluster" {
  source = "github.com/es99/ecs-cluster-module.git"
}