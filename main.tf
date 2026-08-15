module "vpc" {

  source = "./resources/vpc"

  vpc_name = var.vpc_name

  vpc_cidr = var.vpc_cidr

}

module "subnet" {
  source  = "./resources/subnet"
  vpc_id  = module.vpc.vpc_id
  subnets = var.subnets
}

module "igw" {
  source   = "./resources/igw"
  vpc_id   = module.vpc.vpc_id
  igw_name = var.igw_name
}

module "route_table" {
  source       = "./resources/route-table"
  vpc_id       = module.vpc.vpc_id
  igw_id       = module.igw.igw_id
  route_tables = var.route_tables
}

module "route_table_association" {
  source         = "./resources/route-table-association"
  route_table_id = module.route_table.route_table_ids["public"]
  subnet_ids     = module.subnet.subnet_ids
  public_subnets = var.public_subnets
}