variable "aws_region" {

  description = "AWS Region"

  type = string

}

variable "vpc_name" {

  description = "VPC Name"

  type = string

}

variable "vpc_cidr" {

  description = "VPC CIDR"

  type = string

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

variable "igw_name" {
  description = "Internet Gateway Name"
  type        = string
}

variable "route_tables" {
  type = map(object({
    name = string
  }))
}

variable "public_subnets" {
  type = list(string)
}