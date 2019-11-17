# Subnet Frontend
resource "aws_subnet" "subnet_public-2a" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${var.cidr_subnet_2a}"
  map_public_ip_on_launch = "true"
  availability_zone = "${var.availability_zone_2a}"
  tags = {
    Name = "SUBNET_BITEXTRADING | ZONE-2A | 192.168.1.0/24"
  }
}

# Subnet Applicatioin
resource "aws_subnet" "subnet_public-2b" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${var.cidr_subnet_2b}"
  map_public_ip_on_launch = "true"
  availability_zone = "${var.availability_zone_2b}"
  tags = {
    Name = "SUBNET_BITEXTRADING | ZONE-2B | 192.168.2.0/24"
  }
}

# Subnet Database
resource "aws_subnet" "subnet_public-2c" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${var.cidr_subnet_2c}"
  map_public_ip_on_launch = "true"
  availability_zone = "${var.availability_zone_2c}"
  tags = {
    Name = "SUBNET_BITEXTRADING | ZONE-2C | 192.168.3.0/24"
  }
}

# Subnet BitcoinCore
resource "aws_subnet" "subnet_public-2d" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${var.cidr_subnet_2d}"
  map_public_ip_on_launch = "true"
  availability_zone = "${var.availability_zone_2d}"
  tags = {
    Name = "SUBNET_BITEXTRADING | ZONE-2D | 192.168.4.0/24"
  }
}