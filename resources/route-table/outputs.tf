output "route_table_ids" {

  value = {

    for key, rt in aws_route_table.route_table :

    key => rt.id

  }

}