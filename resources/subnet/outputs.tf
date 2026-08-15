output "subnet_ids" {

  value = {

    for key, subnet in aws_subnet.subnet :

    key => subnet.id

  }

}

output "subnet_arns" {

  value = {

    for key, subnet in aws_subnet.subnet :

    key => subnet.arn

  }

}