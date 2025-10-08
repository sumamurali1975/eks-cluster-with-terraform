variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string


}


variable "public_subnet_cidr" {
  description = "public subnet CIDR block"
  type        = list(string)

}


variable "private_subnet_cidr" {
  description = "private subnet CIDR block"
  type        = list(string)

}


variable "region" {
  description = "AWS region"
  type        = string

}


variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)

}



variable "eks_cluster_name" {
  description = "The name of my EKS cluster"
  type        = string

}


variable "cluster_version" {
  description = "My cluster version"
  type        = string

}



variable "node_groups" {
  description = "EKS node group configuration variable"

  type = map(
    object({
      instance_types = list(string)
      capacity_type  = string

      scaling_config = object({
        desired_size = number
        max_size     = number
        min_size     = number
      })
    })
  )
}

variable "node_instance_types" {
  type        = list(string)
  description = "List of EC2 instance types for the EKS node group"
}

variable "desired_capacity" {
  type        = number
  description = "Desired number of worker nodes"
}

variable "min_capacity" {
  type        = number
  description = "Minimum number of worker nodes"
}

variable "max_capacity" {
  type        = number
  description = "Maximum number of worker nodes"
}
