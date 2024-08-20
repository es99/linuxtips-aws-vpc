output "ssm_vpc_id" {
  value = aws_ssm_parameter.vpc.id
}

output "ssm_private_subnet-2a" {
  value = aws_ssm_parameter.private-subnet-2a.id
}

output "ssm_private_subnet-2b" {
  value = aws_ssm_parameter.private-subnet-2b.id
}

output "ssm_private_subnet-2c" {
  value = aws_ssm_parameter.private-subnet-2c.id
}

output "ssm_public_subnet-2a" {
  value = aws_ssm_parameter.public-subnet-2a.id
}

output "ssm_public_subnet-2b" {
  value = aws_ssm_parameter.public-subnet-2b.id
}

output "ssm_public_subnet-2c" {
  value = aws_ssm_parameter.public-subnet-2c.id
}

output "ssm_database_subnet-2a" {
  value = aws_ssm_parameter.database-subnet-2a.id
}

output "ssm_database_subnet-2b" {
  value = aws_ssm_parameter.database-subnet-2b.id
}

output "ssm_database_subnet-2c" {
  value = aws_ssm_parameter.database-subnet-2c.id
}