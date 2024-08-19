resource "aws_subnet" "private_subnet" {
  count             = 3
  vpc_id            = aws_vpc.main.id
  cidr_block        = local.private_subnet[count.index]
  availability_zone = format("%s%s", var.vpc_region, local.zones[count.index])

  tags = {
    Name = format("private-subnet-zone-%s", local.zones[count.index])
  }
}

resource "aws_route_table" "private-internet-access-zone-a" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.gw-zona-a.id
  }

  tags = {
    Name = format("private-route-table-%sa", var.vpc_region)
  }
}

resource "aws_route_table_association" "private-2a" {
  subnet_id      = "subnet-08128d61665305210"
  route_table_id = aws_route_table.private-internet-access-zone-a.id
}

resource "aws_route_table" "private-internet-access-zone-b" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.gw-zone-b.id
  }

  tags = {
    Name = format("private-route-table-%sb", var.vpc_region)
  }
}

resource "aws_route_table_association" "private-2b" {
  subnet_id      = "subnet-0488429af4eaa85a2"
  route_table_id = aws_route_table.private-internet-access-zone-b.id
}

resource "aws_route_table" "private-internet-access-zone-c" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.gw-zone-c.id
  }

  tags = {
    Name = format("private-route-table-%sc", var.vpc_region)
  }
}

resource "aws_route_table_association" "private-2c" {
  subnet_id      = "subnet-06f189d8ced321995"
  route_table_id = aws_route_table.private-internet-access-zone-c.id
}