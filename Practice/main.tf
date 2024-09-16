provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "example_instance" {
  ami           = "ami-0c7c4e3c6b4941f0f"  // Ensure this AMI is available in your region
  instance_type = "t2.micro"
  subnet_id     = "subnet-057259f16c2f4cd4b"  // Select the desired subnet ID
  vpc_security_group_ids = [
    "sg-0d75b73120be1e32e"  // Your custom security group
  ]

  tags = {
    Name = "ExampleInstance"
  }
}
