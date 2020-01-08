resource "aws_eip" "frontend" {
  vpc = true

  instance = "${aws_instance.frontend.id}"
  associate_with_private_ip = "192.168.1.10"
  depends_on = ["aws_internet_gateway.igw"]

  tags = {
    Name = "EIP-EC2_DigitalGold_Frontend"
  }
}

resource "aws_eip" "site" {
  vpc = true

  instance = "${aws_instance.site.id}"
  associate_with_private_ip = "192.168.1.20"
  depends_on = ["aws_internet_gateway.igw"]

  tags = {
    Name = "EIP-EC2_DigitalGold_Site"
  }
}

resource "aws_eip" "application" {
  vpc = true

  instance = "${aws_instance.application.id}"
  associate_with_private_ip = "192.168.2.10"
  depends_on = ["aws_internet_gateway.igw"]

  tags = {
    Name = "EIP-EC2_DigitalGold_Application"
  }
}

resource "aws_eip" "bitcoincore" {
  vpc = true

  instance = "${aws_instance.bitcoincore.id}"
  associate_with_private_ip = "192.168.4.10"
  depends_on = ["aws_internet_gateway.igw"]

  tags = {
    Name = "EIP-EC2_DigitalGold_BitcoinCore"
  }
}