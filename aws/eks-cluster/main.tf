resource "aws_eks_cluster" "eks_cluster" {
    name     = var.cluster_name
    role_arn = aws_iam_role.eks_cluster_role.arn
    version  = var.kubernetes_version

    vpc_config {
        subnet_ids = var.subnet_ids
    }

    tags = {
        lab-owner   = var.owner
        provisioned = timestamp()
    }
}

resource "aws_iam_role" "eks_cluster_role" {
    name = "${var.cluster_name}-role"

    assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "Service": "eks.amazonaws.com"
            },
            "Action": "sts:AssumeRole"
        }
    ]
}
EOF

    tags = {
        lab-owner   = var.owner
        provisioned = timestamp()
    }
}

resource "aws_iam_role_policy_attachment" "eks_cluster_policy_attachment" {
    role       = aws_iam_role.eks_cluster_role.name
    policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"

}

resource "aws_eks_fargate_profile" "fargate_profile" {
    cluster_name          = aws_eks_cluster.eks_cluster.name
    fargate_profile_name  = var.fargate_profile_name
    subnet_ids            = var.subnet_ids
    pod_execution_role_arn = aws_iam_role.eks_cluster_role.arn
    selector {
        namespace = var.namespace
    }

    tags = {
        lab-owner   = var.owner
        provisioned = timestamp()
    }
}