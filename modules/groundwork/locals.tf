locals {
  private_subnet  = cidrsubnets(aws_vpc.main.cidr_block, 4, 4, 4)
  public_subnet   = ["10.0.48.0/24", "10.0.49.0/24", "10.0.50.0/24"]
  database_subnet = ["10.0.51.0/24", "10.0.52.0/24", "10.0.53.0/24"]
  zones           = ["a", "b", "c"]
}