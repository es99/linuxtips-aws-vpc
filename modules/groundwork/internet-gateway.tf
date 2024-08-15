resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name        = format("%s-igw", var.vpc_name)
    Environment = var.vpc_environment
    Owner       = var.vpc_owner
  }
}