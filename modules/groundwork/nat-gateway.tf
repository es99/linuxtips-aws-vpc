resource "aws_eip" "nat-gw-zone-a" {
  domain = "vpc"

  tags = {
    Name = format("%sa", var.vpc_region)
  }
}

resource "aws_eip" "nat-gw-zone-b" {
  domain = "vpc"

  tags = {
    Name = format("%sb", var.vpc_region)
  }
}

resource "aws_eip" "nat-gw-zone-c" {
  domain = "vpc"

  tags = {
    Name = format("%sc", var.vpc_region)
  }
}

resource "aws_nat_gateway" "gw-zona-a" {
  allocation_id = aws_eip.nat-gw-zone-a.id
  subnet_id     = aws_subnet.public_subnet[0].id

  tags = {
    Name = format("nat-gw-%sa", var.vpc_region)
  }
}

resource "aws_nat_gateway" "gw-zone-b" {
  allocation_id = aws_eip.nat-gw-zone-b.id
  subnet_id     = aws_subnet.public_subnet[1].id

  tags = {
    Name = format("nat-gw-%sb", var.vpc_region)
  }
}

resource "aws_nat_gateway" "gw-zone-c" {
  allocation_id = aws_eip.nat-gw-zone-c.id
  subnet_id     = aws_subnet.public_subnet[2].id

  tags = {
    Name = format("nat-gw-%sc", var.vpc_region)
  }
}