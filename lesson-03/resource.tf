resource "aws_vpc" "my_vpc" {
  # Add only required arguments, others will be populated by the import
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "my_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.0.0/20"
  availability_zone = "us-east-2a"
}

resource "aws_security_group" "my_security_group" {
  name        = "mySecurityGroup"
  description = "Default security group for internal application servers"
  vpc_id      = aws_vpc.my_vpc.id
}
