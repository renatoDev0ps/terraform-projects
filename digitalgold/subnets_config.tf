# Subnet Frontend
resource "aws_subnet" "subnet_public-1a" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${var.cidr_subnet_1a}"
  map_public_ip_on_launch = "true"
  availability_zone = "${var.availability_zone_1a}"
  tags = {
    Name = "SUBNET_DIGITALGOLD | ZONE-1A | 192.168.1.0/24"
  }
}

# Subnet Applicatioin
resource "aws_subnet" "subnet_public-1b" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${var.cidr_subnet_1b}"
  map_public_ip_on_launch = "true"
  availability_zone = "${var.availability_zone_1b}"
  tags = {
    Name = "SUBNET_DIGITALGOLD | ZONE-1B | 192.168.2.0/24"
  }
}

# Subnet Database
resource "aws_subnet" "subnet_public-1c" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${var.cidr_subnet_1c}"
  map_public_ip_on_launch = "true"
  availability_zone = "${var.availability_zone_1c}"
  tags = {
    Name = "SUBNET_DIGITALGOLD | ZONE-1C | 192.168.3.0/24"
  }
}

# Subnet BitcoinCore
resource "aws_subnet" "subnet_public-1d" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${var.cidr_subnet_1d}"
  map_public_ip_on_launch = "true"
  availability_zone = "${var.availability_zone_1d}"
  tags = {
    Name = "SUBNET_DIGITALGOLD | ZONE-1D | 192.168.4.0/24"
  }
}