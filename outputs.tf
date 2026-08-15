output "vpc_id" {

  value = module.vpc.vpc_id

}

output "vpc_cidr" {

  value = module.vpc.vpc_cidr

}

output "subnet_ids" {
  value = module.subnet.subnet_ids
}

output "subnet_arns" {
  value = module.subnet.subnet_arns
}

output "igw_id" {
  value = module.igw.igw_id
}

output "route_table_ids" {

  value = module.route_table.route_table_ids

}

output "association_ids" {
  value = module.association.association_ids
}