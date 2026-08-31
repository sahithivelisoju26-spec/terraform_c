resource "aws_vpc" "sahi_vpc" {
  cidr_block = var.sahi_vpc_cidr

  tags = {
    Name = "sahi-vpc"
  }
}

resource "aws_subnet" "sahi_subnet" {
  vpc_id            = aws_vpc.sahi_vpc.id
  cidr_block        = var.sahi_subnet_cidr
  availability_zone = var.sahi_availability_zone

  tags = {
    Name = "sahi-subnet"
  }
}

resource "aws_instance" "sahi_instance" {
  ami           = var.sahi_ami_id
  instance_type = var.sahi_instance_type
  subnet_id     = aws_subnet.sahi_subnet.id

  tags = {
    Name = "sahi-instance"
  }
}