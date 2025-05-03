env         = "stage"
region      = "us-east-2"
zone1       = "us-east-2a"
zone2       = "us-east-2b"
eks_name    = "gradeapp_stage"
eks_version = "1.30"
vpc_cidr    = "10.0.0.0/16" 
vpc_cidr_private_zone1    = "10.0.1.0/24"
vpc_cidr_private_zone2    = "10.0.2.0/24"
vpc_cidr_public_zone1    = "10.0.101.0/24"
vpc_cidr_public_zone2    = "10.0.102.0/24"

# Node configuration
node_instance_type = "t3.small"
node_desired_size  = 1
node_min_size      = 1
node_max_size      = 2