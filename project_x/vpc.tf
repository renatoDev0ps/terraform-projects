resource "aws_vpc" "vpc" {
  cidr_block = "${var.cidr_vpc}"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "VPC-CLOUD_BITEXTRADING"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.vpc.id}"

  tags = {
    Name = "GTW-CLOUD_BITEXTRADING"
  }
}

# Route table configuration
resource "aws_route_table" "rtb_public" {
  vpc_id = "${aws_vpc.vpc.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw.id}"
  }

  tags = {
    Name = "ROUTE TABLE | CLOUD_BITEXTRADING"
  }
}

resource "aws_route_table_association" "rta_subnet_public_2a" {
  route_table_id = "${aws_route_table.rtb_public.id}"
  subnet_id      = "${aws_subnet.subnet_public-2a.id}"
}

resource "aws_route_table_association" "rta_subnet_public_2b" {
  route_table_id = "${aws_route_table.rtb_public.id}"
  subnet_id      = "${aws_subnet.subnet_public-2b.id}"
}

resource "aws_route_table_association" "rta_subnet_public_2c" {
  route_table_id = "${aws_route_table.rtb_public.id}"
  subnet_id      = "${aws_subnet.subnet_public-2c.id}"
}

resource "aws_route_table_association" "rta_subnet_public_2d" {
  route_table_id = "${aws_route_table.rtb_public.id}"
  subnet_id      = "${aws_subnet.subnet_public-2d.id}"
}
