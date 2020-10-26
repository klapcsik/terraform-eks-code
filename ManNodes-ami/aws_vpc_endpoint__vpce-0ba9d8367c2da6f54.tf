# File generated by aws2tf see https://github.com/awsandy/aws2tf
# aws_vpc_endpoint.vpce-0ba9d8367c2da6f54:
resource "aws_vpc_endpoint" "vpce-0ba9d8367c2da6f54" {
  policy = jsonencode(
    {
      Statement = [
        {
          Action    = "*"
          Effect    = "Allow"
          Principal = "*"
          Resource  = "*"
        },
      ]
    }
  )
  private_dns_enabled = true
  route_table_ids     = []
  security_group_ids = [
    aws_security_group.sg-073762dd312483127.id,
  ]
  service_name = "com.amazonaws.eu-west-1.logs"
  subnet_ids = [
    aws_subnet.subnet-00d48938ae75575f6.id,
    aws_subnet.subnet-0c29b7ba0fae1c061.id,
    aws_subnet.subnet-0eed8d110fe361191.id,
  ]
  tags              = {}
  vpc_endpoint_type = "Interface"
  vpc_id            = aws_vpc.vpc-0c5887ebf50affcd7.id

  timeouts {}
}
