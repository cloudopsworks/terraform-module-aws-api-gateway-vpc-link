##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#

variable "rest_vpc_links" {
  description = "List of VPC Links for API Gateway"
  type        = any
  default     = []
}