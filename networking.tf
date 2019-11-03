variable "region" {
  type = "map"
  default = {
    "N_Virginia" = "us-east-1"
    "Ohio" = "us-east-2"
    "N_California" = "us-west-1"
    "Oregon" = "us-west-2"
  }
}

data "aws_route53_zone" "dns_private_zone" {
  name         = "BBBBB"
  private_zone = true
}

data "aws_route53_zone" "dns_reverse_zone" {
  name         = "CCCCC"
  private_zone = true
}

data "aws_route53_zone" "dns_public_zone" {
  name         = "DDDDD"
  private_zone = false
}

variable "subnets" {
  type = "map"
  default = {
    "AAAAA001uswest1-public-us-west-1a-sn"  = "EEEEE"
    "AAAAA001uswest1-public-us-west-1b-sn"  = "FFFFF"
    "AAAAA001uswest1-private-us-west-1a-sn" = "GGGGG"
    "AAAAA001uswest1-private-us-west-1b-sn" = "HHHHH"
  }
}

variable "secgroups" {
  type = "map"
  default = {
    "AAAAA001uswest1-bastion-security-group" = "IIIII"
    "AAAAA001uswest1-public-security-group"  = "JJJJJ"
    "AAAAA001uswest1-private-security-group" = "KKKKK"
  }
}

variable "amis" {
  type = "map"
  default = {
    "ubuntu_18_04" = "ami-064a0193585662d74"
    "centos_7"  = "ami-02eac2c0129f6376b"
  }
}

variable "instance_type" {
  type = "map"
  default = {
    "nano"    = "t2.nano"
    "micro"   = "t2.micro"
    "small"   = "t2.small"
    "medium"  = "t2.medium"
    "large"   = "t2.large"
    "xlarge"  = "t2.xlarge"
    "2xlarge" = "t2.2xlarge"
  }
}

variable "keypairs" {
  type = "map"
  default = {
    "kp_1" = "LLLLL"
  }
}

variable "public_key" {
  default = "z/LLLLL.pub"
}

variable "private_key" {
  default = "z/LLLLL.pem"
}

variable "ansible_user" {
  type = "map"
  default = {
    "ubuntu_18_04" = "ubuntu"
    "centos_7"  = "centos"
  }
}
