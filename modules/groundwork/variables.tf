variable "vpc_name" {
  type        = string
  description = "Name of VPC."
}

variable "vpc_environment" {
  type        = string
  description = "tag - environment"

}

variable "vpc_owner" {
  type        = string
  description = "tag - owner"
}

variable "vpc_region" {
  type        = string
  description = "Região onde a infra será implantada"
}