resource "aws_vpc" "vpc" {
  cidr_block = "${var.cidr_vpc}"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "VPC-CLOUD_WINPLACECORP"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.vpc.id}"

  tags = {
    Name = "GTW-CLOUD_WINPLACECORP"
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
    Name = "ROUTE TABLE | CLOUD_WINPLACECORP"
  }
}

resource "aws_route_table_association" "rta_subnet_public_1a" {
  route_table_id = "${aws_route_table.rtb_public.id}"
  subnet_id      = "${aws_subnet.subnet_public-1a.id}"
}

resource "aws_route_table_association" "rta_subnet_public_1b" {
  route_table_id = "${aws_route_table.rtb_public.id}"
  subnet_id      = "${aws_subnet.subnet_public-1b.id}"
}

resource "aws_route_table_association" "rta_subnet_public_1c" {
  route_table_id = "${aws_route_table.rtb_public.id}"
  subnet_id      = "${aws_subnet.subnet_public-1c.id}"
}

resource "aws_route_table_association" "rta_subnet_public_1d" {
  route_table_id = "${aws_route_table.rtb_public.id}"
  subnet_id      = "${aws_subnet.subnet_public-1d.id}"
}
