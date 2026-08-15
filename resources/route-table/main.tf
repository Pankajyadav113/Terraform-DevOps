resource "aws_route_table" "route_table" {
  for_each = var.route_tables
  vpc_id   = var.vpc_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.igw_id
  }

  tags = {
    Name = each.value.name
  }
}