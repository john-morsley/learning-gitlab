#       _____ _                 _      
#      / ____(_)               | |     
#     | (___  _ _ __ ___  _ __ | | ___ 
#      \___ \| | '_ ` _ \| '_ \| |/ _ \
#      ____) | | | | | | | |_) | |  __/
#     |_____/|_|_| |_| |_| .__/|_|\___|
#                        | |           
#                        |_|           

module "simple-vpc" {

  source = "../terraform-aws-vpc"
  #source = "john-morsley/vpc/aws"

  name = var.name

  vpc_cidr = var.vpc_cidr

  public_subnet_cidrs = var.public_subnet_cidrs

  availability_zones = data.aws_availability_zones.available.names

}