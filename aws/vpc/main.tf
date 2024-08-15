# main.tf

resource "aws_vpc" "main" {
    cidr_block = var.vpc_cidr_block
    tags = {
        lab-owner   = var.owner
        provisioned = timestamp()
    }
}

resource "aws_subnet" "subnets" {
    count             = length(var.subnet_cidr_blocks)
    vpc_id            = aws_vpc.main.id
    cidr_block        = var.subnet_cidr_blocks[count.index]
    availability_zone = var.availability_zone# Replace with your desired availability zone
}