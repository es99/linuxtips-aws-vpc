resource "aws_subnet" "public_subnet" {
  count             = 3
  vpc_id            = aws_vpc.main.id
  cidr_block        = local.public_subnet[count.index]
  availability_zone = format("%s%s", var.vpc_region, local.zones[count.index])

  tags = {
    Name = format("public-subnet-zone-%s", local.zones[count.index])
  }
}