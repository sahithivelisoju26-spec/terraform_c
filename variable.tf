variable "sahi_prod_aws_region" {
  description = "AWS region"
  type        = string
}

variable "sahi_vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
}

variable "sahi_subnet_cidr" {
  description = "Subnet CIDR block"
  type        = string
}

variable "sahi_availability_zone" {
  description = "Availability zone for subnet"
  type        = string
}

variable "sahi_instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "sahi_ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
}