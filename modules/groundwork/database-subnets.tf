resource "aws_subnet" "database_subnet" {
  count             = 3
  vpc_id            = aws_vpc.main.id
  cidr_block        = local.database_subnet[count.index]
  availability_zone = format("%s%s", var.vpc_region, local.zones[count.index])

  tags = {
    Name = format("database-subnet-zone-%s", local.zones[count.index])
  }
}