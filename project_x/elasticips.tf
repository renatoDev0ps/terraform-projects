resource "aws_eip" "frontend" {
  vpc = true

  instance                  = "${aws_instance.frontend.id}"
  associate_with_private_ip = "192.168.1.10"
  depends_on                = ["aws_internet_gateway.igw"]

  tags = {
    Name = "EIP-EC2_BitexTrading_Frontend"
  }
}

resource "aws_eip" "site" {
  vpc = true

  instance                  = "${aws_instance.site.id}"
  associate_with_private_ip = "192.168.1.20"
  depends_on                = ["aws_internet_gateway.igw"]

  tags = {
    Name = "EIP-EC2_BitexTrading_Site"
  }
}

resource "aws_eip" "application" {
  vpc = true

  instance                  = "${aws_instance.application.id}"
  associate_with_private_ip = "192.168.2.10"
  depends_on                = ["aws_internet_gateway.igw"]

  tags = {
    Name = "EIP-EC2_BitexTrading_Application"
  }
}

resource "aws_eip" "redis" {
  vpc = true

  instance                  = "${aws_instance.redis.id}"
  associate_with_private_ip = "192.168.2.20"
  depends_on                = ["aws_internet_gateway.igw"]

  tags = {
    Name = "EIP-EC2_BitexTrading_Redis"
  }
}