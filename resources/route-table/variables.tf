variable "route_tables" {
  description = "Route Tables"
  type = map(object({
    name = string
  }))
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "igw_id" {
  description = "Internet Gateway ID"
  type        = string
}