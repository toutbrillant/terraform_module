module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "4.0.1"

  name = var.vpc_name
  cidr = var.cidr_block

  azs             = var.availability_zones
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets
  
  database_subnets = var.database_subnets
  create_database_subnet_group = var.create_database_subnet_group
  create_database_subnet_route_table = var.create_database_subnet_route_table


  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.single_nat_gateway

  enable_dns_hostnames = var.enable_dns_host
  enable_dns_support = var.enable_dns_support


  /*tags = {
    Terraform = "true"
    Environment = "dev"
    }*/
    
    public_subnet_tags = {
    Type = "public subnets"
    }
   
    private_subnet_tags  = {
    Type = "private subnets"
    }
   
    database_subnet_tags = {
    Type = "database subnets"
    }
  
}