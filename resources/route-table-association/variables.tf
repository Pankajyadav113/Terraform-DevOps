variable "route_table_id" {
  description = "Route Table ID"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs"
  type        = string
}

variable "public_subnets" {
  description = "Public Subnet"
  type        = list(string)
}
