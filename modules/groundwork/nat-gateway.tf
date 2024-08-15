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
  subnet_id     = "subnet-02bd0f467e844038e"

  tags = {
    Name = format("nat-gw-%sa", var.vpc_region)
  }
}

resource "aws_nat_gateway" "gw-zone-b" {
  allocation_id = aws_eip.nat-gw-zone-b.id
  subnet_id     = "subnet-0dc48a8e5028f2925"

  tags = {
    Name = format("nat-gw-%sb", var.vpc_region)
  }
}

resource "aws_nat_gateway" "gw-zone-c" {
  allocation_id = aws_eip.nat-gw-zone-c.id
  subnet_id     = "subnet-09a9fea898b34ebc3"

  tags = {
    Name = format("nat-gw-%sc", var.vpc_region)
  }
}