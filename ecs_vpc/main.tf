module "groundwork" {
  source = "../modules/groundwork"

  vpc_name        = "linuxtips-aws-containers"
  vpc_environment = "dev"
  vpc_owner       = "engels.souza"
  vpc_region      = "us-east-2"
}