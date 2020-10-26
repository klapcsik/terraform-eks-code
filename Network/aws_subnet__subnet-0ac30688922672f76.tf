# File generated by aws2tf see https://github.com/awsandy/aws2tf
# aws_subnet.subnet-0ac30688922672f76:
resource "aws_subnet" "subnet-0ac30688922672f76" {
  assign_ipv6_address_on_creation = false
  availability_zone               = "eu-west-1c"
  cidr_block                      = "100.64.64.0/19"
  map_public_ip_on_launch         = false
  tags = {
    "Name"                                        = "i3-manamieksp"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "manamieksp"
    "kubernetes.io/cluster/manamieksp"            = "shared"
    "kubernetes.io/role/internal-elb"             = "1"
  }
  vpc_id = aws_vpc.vpc-mycluster1.id

  timeouts {}
}
