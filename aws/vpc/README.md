# AWS VPC Module

This module creates an Amazon Web Services (AWS) Virtual Private Cloud (VPC) with associated resources.

## Variables

The following variables can be customized when using this module:

- `vpc_name` (string): The name of the VPC.
- `cidr_block` (string): The IPv4 network range for the VPC.
- `enable_dns_support` (bool): Indicates whether DNS resolution is supported for the VPC.
- `enable_dns_hostnames` (bool): Indicates whether instances that are launched in this VPC receive a public DNS hostname.
- `tags` (map): A map of tags to assign to the VPC resources.

## Outputs

This module provides the following outputs:

- `vpc_id` (string): The ID of the VPC.
- `vpc_cidr_block` (string): The IPv4 network range of the VPC.
- `vpc_default_security_group_id` (string): The ID of the default security group associated with the VPC.

## Usage

To use this module, include the following code in your Terraform configuration:

```hcl
module "aws_vpc" {
    source = "path/to/aws/vpc"

    vpc_name              = "my-vpc"
    cidr_block            = "10.0.0.0/16"
    enable_dns_support    = true
    enable_dns_hostnames  = true
    tags = {
        Environment = "production"
        Project     = "my-project"
    }
}
```
