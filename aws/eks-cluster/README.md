# AWS EKS Cluster Terraform Module

This Terraform module provides a reusable and configurable infrastructure-as-code solution for creating an Amazon Elastic Kubernetes Service (EKS) cluster on AWS.

## Features

- Creates an EKS cluster with the specified configuration.
- Supports customization of cluster size, instance types, and networking settings.
- Automatically provisions the necessary resources, such as VPC, subnets, and security groups.
- Supports integration with other AWS services, such as Elastic Load Balancer (ELB) and Auto Scaling Groups (ASG).

## Usage

To use this module, include the following code in your Terraform configuration:

```hcl
module "eks_cluster" {
    source = "path/to/eks-cluster"

    cluster_name        = "my-eks-cluster"
    cluster_version     = "1.21"
    instance_type       = "t3.medium"
    desired_capacity    = 3
    max_capacity        = 5
    min_capacity        = 1
    vpc_id              = "vpc-12345678"
    subnet_ids          = ["subnet-12345678", "subnet-87654321"]
    security_group_ids  = ["sg-12345678"]
}
```

In the above example, we are creating an EKS cluster named "my-eks-cluster" with version 1.21. The cluster will use t3.medium instances and have a desired capacity of 3, with a maximum capacity of 5 and a minimum capacity of 1. The cluster will be deployed in the specified VPC and subnets, and will use the provided security group.

## Configuration

The following variables can be configured when using this module:

- `cluster_name`: The name of the EKS cluster.
- `cluster_version`: The version of Kubernetes to use for the cluster.
- `instance_type`: The EC2 instance type to use for the worker nodes.
- `desired_capacity`: The desired number of worker nodes in the cluster.
- `max_capacity`: The maximum number of worker nodes in the cluster.
- `min_capacity`: The minimum number of worker nodes in the cluster.
- `vpc_id`: The ID of the VPC where the cluster will be deployed.
- `subnet_ids`: A list of subnet IDs where the worker nodes will be deployed.
- `security_group_ids`: A list of security group IDs to associate with the worker nodes.

For more information on how to configure and use this module, refer to the documentation in the module's source code.
