##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#
resource "aws_api_gateway_vpc_link" "vpc_link" {
  for_each = {
    for item in var.rest_vpc_links : item.name => item
  }
  name        = "vpc-link-${each.value.name}-${local.system_name}"
  description = "VPC Link for API Gateway - ${local.system_name}"
  target_arns = [each.value.load_balancer_arn]
  tags = merge({
    Name = "vpc-link-${each.value.name}-${local.system_name}"
  }, local.all_tags)
}