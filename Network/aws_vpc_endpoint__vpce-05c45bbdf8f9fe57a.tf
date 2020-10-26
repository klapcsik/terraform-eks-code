# File generated by aws2tf see https://github.com/awsandy/aws2tf
# aws_vpc_endpoint.vpce-05c45bbdf8f9fe57a:
resource "aws_vpc_endpoint" "vpce-05c45bbdf8f9fe57a" {
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
      Version = "2008-10-17"
    }
  )
  private_dns_enabled = false
  route_table_ids = [
    aws_route_table.rtb-0102c621469c344cd.id,
    aws_route_table.rtb-0329e787bbafcb2c4.id,
    aws_route_table.rtb-041267f0474c24068.id,
  ]
  security_group_ids = []
  service_name       = "com.amazonaws.eu-west-1.s3"
  subnet_ids         = []
  tags               = {}
  vpc_endpoint_type  = "Gateway"
  vpc_id             = aws_vpc.vpc-mycluster1.id

  timeouts {}
}
