resource "aws_vpc" "test-vpc" {
  cidr_block           = "${var.vpc_cidr_block}"
  enable_dns_hostnames = true
  enable_dns_support   = true
  
  tags {
    Name = "HelloWorld"
    Description = "Test VPC"
  }
}