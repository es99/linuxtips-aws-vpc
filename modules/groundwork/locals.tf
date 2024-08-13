locals {
  private_subnet  = cidrsubnets(aws_vpc.main.cidr_block, 4, 4, 4)
  public_subnet   = cidrsubnets(aws_vpc.main.cidr_block, 8, 8, 8)
  database_subnet = cidrsubnets(aws_vpc.main.cidr_block, 8, 8, 8)
  zones           = ["a", "b", "c"]
}