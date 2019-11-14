variable "access_key" {
  default = "AKIAY65QEULDZWYANQIE"
}
variable "secret_key" {
  default = "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"
}

variable "key_name" {
  default = "prodbitex"
}

variable "region" {
  default = "us-west-2"
}

variable "domain" {
  default = "bitextrading.com"
}

variable "cidr_vpc" {
  description = "CIDR Bloco da VPC"
  default = "192.168.0.0/16"
}

variable "cidr_subnet_2a" {
  description = "Subnet Zona A 1.0/24"
  default = "192.168.1.0/24"
}
variable "cidr_subnet_2b" {
  description = "Subnet Zona B 2.0/24"
  default = "192.168.2.0/24"
}
variable "cidr_subnet_2c" {
  description = "Subnet Zona C 3.0/24"
  default = "192.168.3.0/24"
}
variable "cidr_subnet_2d" {
  description = "Subnet Zona D 4.0/24"
  default = "192.168.4.0/24"
}

variable "availability_zone_2a" {
  description = "Zona de Disponibilidade da SubNet"
  default = "us-west-2a"
}
variable "availability_zone_2b" {
  description = "Zona de Disponibilidade da SubNet"
  default = "us-west-2b"
}
variable "availability_zone_2c" {
  description = "Zona de Disponibilidade da SubNet"
  default = "us-west-2c"
}
variable "availability_zone_2d" {
  description = "Zona de Disponibilidade da SubNet"
  default = "us-west-2d"
}

variable "ami" {
  description = "ami instance"
  default = "ami-06d51e91cea0dac8d"
}