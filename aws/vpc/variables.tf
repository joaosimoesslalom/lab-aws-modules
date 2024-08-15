variable "vpc_cidr_block" {
    description = "CIDR block for the VPC"
    type        = string
}
variable "subnet_cidr_blocks" {
    description = "List of CIDR blocks for the subnets"
    type        = list(string)
}
variable "availability_zone" {
    description = "The availability zone to use for the subnet"
    type        = string
}
variable "owner" {
    description = "The owner of the VPC"
    type        = string
}