#provider region
variable "aws_region" {
    description = "determine_aws_region"
    type = string
    default = "us-east-1"
}

#vpc name
variable "vpc_name" {
    description = "VPC Name"
    type = string
    default = "myvpc30"
}

#vpc cidr block
variable "cidr_block" {
    description = "VPC CIDR Block"
    type = string
    default = "10.0.0.0/16"
}

#VPC Availability zones
variable "availability_zones" {
    description = "VPC availability zones"
    type = list(string)
    default = ["us-east-1a" , "us-east-1b" ,"us-east-1c"]
}

#VPC Public subnets
variable "public_subnets" {
    description = "VPC public subnet"
    type = list(string)
    default = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

#VPC Private subnets
variable "private_subnets" {
    description = "VPC private subnet"
    type = list(string)
    default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}
#Enable NAT gateway
variable "enable_nat_gateway" {
    description = "Enable NAT gateway for private subnet communication"
    type = bool
    default = true
}

#single_nat_gateway
variable "single_nat_gateway" {
    description = "Enable only single_nat_gateway to save cost"
    type = bool
    default = true
}

#VPC database subnets
variable "database_subnets" {
    description = "VPC database subnet"
    type = list(string)
    default = ["10.0.151.0/24", "10.0.152.0/24", "10.0.153.0/24"]
}

#create_database_subnet_route_table
variable "create_database_subnet_route_table" {
    description = "create_database_subnet_route_table for private subnet communication"
    type = bool
    default = true
}

# create_database_subnet_group
variable "create_database_subnet_group" {
    description = "create_database_subnet_group"
    type = bool
    default = true
}

# enable_dns_hostnames
variable "enable_dns_host" {
    description = "enable_dns_hostnames"
    type = bool
    default = true
}

# enable_dns_support
variable "enable_dns_support" {
    description = "enable_dns_suppt"
    type = bool
    default = true
}