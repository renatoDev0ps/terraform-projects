# Frontend configuration
resource "aws_instance" "frontend" {
  availability_zone = "${var.availability_zone_2a}"
  ami = "ami-0522db01172e2ac65"
  instance_type = "t3.medium"
  key_name = "${var.key_name}"

  private_ip = "192.168.1.10"
  subnet_id = "${aws_subnet.subnet_public-2a.id}"

  vpc_security_group_ids = [
    "${aws_security_group.ssh.id}",
    "${aws_security_group.frontend.id}",
  ]

  root_block_device {
    volume_type           = "gp2"
    volume_size           = 32
    delete_on_termination = true
  }

  ebs_block_device {
    device_name           = "/dev/xvdb"
    volume_type           = "gp2"
    volume_size           = 32
    delete_on_termination = true
  }

  tags = {
    Name = "EC2-BitexTrading_Frontend-Maq01"
  }
}

# Site configuration
resource "aws_instance" "site" {
  availability_zone = "${var.availability_zone_2a}"
  ami = "ami-05f2e812ee1fdbdfe"
  instance_type = "t3.small"
  key_name = "${var.key_name}"

  private_ip = "192.168.1.20"
  subnet_id = "${aws_subnet.subnet_public-2a.id}"

  vpc_security_group_ids = [
    "${aws_security_group.ssh.id}",
    "${aws_security_group.frontend.id}",
  ]

  root_block_device {
    volume_type           = "gp2"
    volume_size           = 32
    delete_on_termination = true
  }

  ebs_block_device {
    device_name           = "/dev/xvdb"
    volume_type           = "gp2"
    volume_size           = 32
    delete_on_termination = true
  }

  tags = {
    Name = "EC2-BitexTrading_Site-Maq01"
  }
}

# Application configuration
resource "aws_instance" "application" {
  availability_zone = "${var.availability_zone_2b}"
  ami = "ami-040977bb90ccec0a5"
  instance_type = "t3.large"
  key_name = "${var.key_name}"

  private_ip = "192.168.2.10"
  subnet_id = "${aws_subnet.subnet_public-2b.id}"

  vpc_security_group_ids = [
    "${aws_security_group.ssh.id}",
    "${aws_security_group.frontend.id}",
    "${aws_security_group.application.id}",
  ]

  root_block_device {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  ebs_block_device {
    device_name           = "/dev/xvdb"
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  tags = {
    Name = "EC2-BitexTrading_Application-Maq01"
  }
}

# Redis configuration
resource "aws_instance" "redis" {
  availability_zone = "${var.availability_zone_2b}"
  ami = "${var.ami}"
  instance_type = "t3.large"
  key_name = "${var.key_name}"

  private_ip = "192.168.2.20"
  subnet_id = "${aws_subnet.subnet_public-2b.id}"

  vpc_security_group_ids = [
    "${aws_security_group.ssh.id}",
    "${aws_security_group.redis.id}",
  ]

  root_block_device {
    volume_type           = "gp2"
    volume_size           = 20
    delete_on_termination = true
  }

  ebs_block_device {
    device_name           = "/dev/xvdb"
    volume_type           = "gp2"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name = "EC2-BitexTrading_Redis-Maq01"
  }
}

# Database configuration
resource "aws_instance" "database" {
  availability_zone = "${var.availability_zone_2c}"
  ami = "ami-07b0d0ebe85352e6f"
  instance_type = "t3.small"
  key_name = "${var.key_name}"

  private_ip = "192.168.3.10"
  subnet_id = "${aws_subnet.subnet_public-2c.id}"

  vpc_security_group_ids = [
    "${aws_security_group.ssh.id}",
    "${aws_security_group.database.id}",
    "${aws_security_group.pgadmin.id}",
  ]

  root_block_device {
    volume_type           = "gp2"
    volume_size           = 32
    delete_on_termination = true
  }

  ebs_block_device {
    device_name           = "/dev/xvdb"
    volume_type           = "gp2"
    volume_size           = 32
    delete_on_termination = true
  }

  tags = {
    Name = "EC2-BitexTrading_Database-Maq01"
  }
}

# BitcoinCore configuration
resource "aws_instance" "bitcoincore" {
  availability_zone = "${var.availability_zone_2d}"
  ami = "ami-0dd6fbe17f7c132c2"
  instance_type = "t3.medium"
  key_name = "${var.key_name}"

  private_ip = "192.168.4.10"
  subnet_id = "${aws_subnet.subnet_public-2d.id}"

  vpc_security_group_ids = [
    "${aws_security_group.ssh.id}",
    "${aws_security_group.bitcoincore.id}",
  ]

  root_block_device {
    volume_type           = "gp2"
    volume_size           = 32
    delete_on_termination = true
  }

  ebs_block_device {
    device_name           = "/dev/xvdb"
    volume_type           = "gp2"
    volume_size           = 32
    delete_on_termination = true
  }

  tags = {
    Name = "EC2-BitexTrading_BitcoinCore-Maq01"
  }
}