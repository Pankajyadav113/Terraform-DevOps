resource "aws_route_table_association" "association" {

  for_each = toset(var.public_subnets)

  subnet_id      = var.subnet_ids[each.key]
  route_table_id = var.route_table_id

}