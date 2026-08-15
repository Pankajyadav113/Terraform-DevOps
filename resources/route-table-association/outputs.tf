output "association_ids" {

  value = {
    for key, value in aws_route_table_association.association :
    key => value.id
  }

}