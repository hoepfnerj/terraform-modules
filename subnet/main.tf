resource "aws_subnet" "subnet" {
  count             = "1"
  vpc_id            = "${var.vpc_id}"
  cidr_block        = "${var.subnet_cidr}"
  availability_zone = "${var.subnet_availability_zone}"

  lifecycle {
    create_before_destroy = true
  }
}
