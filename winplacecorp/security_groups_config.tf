resource "aws_security_group" "frontend" {
  name = "frontend"
  description = "Allow public inbound traffic"
  vpc_id = "${aws_vpc.vpc.id}"

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 65535
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "ssh" {
  name = "ssh"
  description = "Allow local inbound traffic"
  vpc_id = "${aws_vpc.vpc.id}"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["189.124.236.71/32"]
  }

  egress {
    from_port = 0
    to_port = 65535
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "application" {
  name = "application"
  description = "Allow local inbound traffic"
  vpc_id = "${aws_vpc.vpc.id}"

  ingress {
    from_port = 3000
    to_port = 3000
    protocol = "tcp"
    cidr_blocks = ["192.168.1.0/24"]
  }

  ingress {
    from_port = 587
    to_port = 587
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 65535
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "database" {
  name = "database"
  description = "Allow local inbound traffic"
  vpc_id = "${aws_vpc.vpc.id}"

  ingress {
    from_port = 5432
    to_port = 5432
    protocol = "tcp"
    cidr_blocks = ["192.168.2.0/24"]
  }

  egress {
    from_port = 0
    to_port = 65535
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "pgadmin" {
  name = "pgadmin"
  description = "Allow local inbound traffic"
  vpc_id = "${aws_vpc.vpc.id}"

  ingress {
    from_port = 5050
    to_port = 5050
    protocol = "tcp"
    cidr_blocks = ["189.124.236.71/32"]
  }

  egress {
    from_port = 0
    to_port = 65535
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "bitcoincore" {
  name = "bitcoincore"
  description = "Allow local inbound traffic"
  vpc_id = "${aws_vpc.vpc.id}"

  ingress {
    from_port = 8333
    to_port = 8333
    protocol = "tcp"
    cidr_blocks = ["192.168.2.0/24"]
  }

  ingress {
    from_port = 8332
    to_port = 8332
    protocol = "tcp"
    cidr_blocks = ["192.168.2.0/24"]
  }

  ingress {
    from_port = 18332
    to_port = 18332
    protocol = "tcp"
    cidr_blocks = ["192.168.2.0/24"]
  }

  ingress {
    from_port = 18443
    to_port = 18443
    protocol = "tcp"
    cidr_blocks = ["192.168.2.0/24"]
  }

  ingress {
    from_port = 18444
    to_port = 18444
    protocol = "tcp"
    cidr_blocks = ["192.168.2.0/24"]
  }

  egress {
    from_port = 0
    to_port = 65535
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "redis" {
  name = "redis"
  description = "Allow local inbound traffic"
  vpc_id = "${aws_vpc.vpc.id}"

  ingress {
    from_port = 6379
    to_port = 6379
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 65535
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}