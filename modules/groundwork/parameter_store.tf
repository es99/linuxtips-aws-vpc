resource "aws_ssm_parameter" "vpc" {
  name  = format("/%s/vpc/vpc_id", var.vpc_name)
  type  = "String"
  value = aws_vpc.main.id
}

resource "aws_ssm_parameter" "private-subnet-2a" {
  name  = format("/%s/vpc/private_subnet_2a", var.vpc_name)
  type  = "String"
  value = aws_subnet.private_subnet[0].id
}

resource "aws_ssm_parameter" "private-subnet-2b" {
  name  = format("/%s/vpc/private_subnet_2b", var.vpc_name)
  type  = "String"
  value = aws_subnet.private_subnet[1].id
}

resource "aws_ssm_parameter" "private-subnet-2c" {
  name  = format("/%s/vpc/private_subnet_2c", var.vpc_name)
  type  = "String"
  value = aws_subnet.private_subnet[2].id
}

resource "aws_ssm_parameter" "public-subnet-2a" {
  name  = format("/%s/vpc/public_subnet_2a", var.vpc_name)
  type  = "String"
  value = aws_subnet.public_subnet[0].id
}

resource "aws_ssm_parameter" "public-subnet-2b" {
  name  = format("/%s/vpc/public_subnet_2b", var.vpc_name)
  type  = "String"
  value = aws_subnet.public_subnet[1].id
}

resource "aws_ssm_parameter" "public-subnet-2c" {
  name  = format("/%s/vpc/public_subnet_2c", var.vpc_name)
  type  = "String"
  value = aws_subnet.public_subnet[2].id
}

resource "aws_ssm_parameter" "database-subnet-2a" {
  name  = format("/%s/vpc/database_subnet_2a", var.vpc_name)
  type  = "String"
  value = aws_subnet.database_subnet[0].id
}

resource "aws_ssm_parameter" "database-subnet-2b" {
  name  = format("/%s/vpc/database_subnet_2b", var.vpc_name)
  type  = "String"
  value = aws_subnet.database_subnet[1].id
}

resource "aws_ssm_parameter" "database-subnet-2c" {
  name  = format("/%s/vpc/database_subnet_2c", var.vpc_name)
  type  = "String"
  value = aws_subnet.database_subnet[2].id
}