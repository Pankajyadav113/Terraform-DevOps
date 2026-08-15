variable "vpc_id" {
  description = "VPC ID"
  type        = string
}


variable "subnets" {
  description = "Subnet Configuration"

  type = map(object({
    cidr_block        = string
    availability_zone = string
    public            = bool
    name              = string

  }))

}
