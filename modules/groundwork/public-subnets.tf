resource "aws_subnet" "public_subnet" {
  count             = 3
  vpc_id            = aws_vpc.main.id
  cidr_block        = local.public_subnet[count.index]
  availability_zone = format("%s%s", var.vpc_region, local.zones[count.index])

  tags = {
    Name = format("public-subnet-zone-%s", local.zones[count.index])
  }
}

resource "aws_route_table" "public_internet_access" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = format("%s-public-route-table", var.vpc_name)
  }
}

resource "aws_route_table_association" "public-2a" {
  subnet_id      = "subnet-02bd0f467e844038e"
  route_table_id = aws_route_table.public_internet_access.id
}

resource "aws_route_table_association" "public-2b" {
  subnet_id      = "subnet-0dc48a8e5028f2925"
  route_table_id = aws_route_table.public_internet_access.id
}

resource "aws_route_table_association" "public-2c" {
  subnet_id      = "subnet-09a9fea898b34ebc3"
  route_table_id = aws_route_table.public_internet_access.id
}