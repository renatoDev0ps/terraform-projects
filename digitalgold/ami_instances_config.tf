# Frontend configuration
resource "aws_instance" "frontend" {
  availability_zone = "${var.availability_zone_1a}"
  ami = "${var.ami}"
  instance_type = "t3.medium"
  key_name = "${var.key_name}"

  private_ip = "192.168.1.10"
  subnet_id = "${aws_subnet.subnet_public-1a.id}"

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
    Name = "EC2-DigitalGold_Frontend-Maq01"
  }
}

# Site configuration
resource "aws_instance" "site" {
  availability_zone = "${var.availability_zone_1a}"
  ami = "${var.ami}"
  instance_type = "t3.medium"
  key_name = "${var.key_name}"

  private_ip = "192.168.1.20"
  subnet_id = "${aws_subnet.subnet_public-1a.id}"

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
    Name = "EC2-DigitalGold_Site-Maq01"
  }
}

# Application configuration
resource "aws_instance" "application" {
  availability_zone = "${var.availability_zone_1b}"
  ami = "${var.ami}"
  instance_type = "t3.medium"
  key_name = "${var.key_name}"

  private_ip = "192.168.2.10"
  subnet_id = "${aws_subnet.subnet_public-1b.id}"

  vpc_security_group_ids = [
    "${aws_security_group.ssh.id}",
    "${aws_security_group.frontend.id}",
    "${aws_security_group.application.id}",
  ]

  root_block_device {
    volume_type           = "gp2"
    volume_size           = 100
    delete_on_termination = true
  }

  ebs_block_device {
    device_name           = "/dev/xvdb"
    volume_type           = "gp2"
    volume_size           = 100
    delete_on_termination = true
  }

  tags = {
    Name = "EC2-DigitalGold_Application-Maq01"
  }
}

# Database configuration
resource "aws_instance" "database" {
  availability_zone = "${var.availability_zone_1c}"
  ami = "${var.ami}"
  instance_type = "t3.micro"
  key_name = "${var.key_name}"

  private_ip = "192.168.3.10"
  subnet_id = "${aws_subnet.subnet_public-1c.id}"

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
    Name = "EC2-DigitalGold_Database-Maq01"
  }
}

# BitcoinCore configuration
resource "aws_instance" "bitcoincore" {
  availability_zone = "${var.availability_zone_1d}"
  ami = "${var.ami}"
  instance_type = "t3.xlarge"
  key_name = "${var.key_name}"

  private_ip = "192.168.4.10"
  subnet_id = "${aws_subnet.subnet_public-1d.id}"

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
    Name = "EC2-DigitalGold_BitcoinCore-Maq01"
  }
}
