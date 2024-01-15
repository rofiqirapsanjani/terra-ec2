provider "aws" {
  region = "us-east-2"

}

resource "aws_instance" "First_instance" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = "first_instance-key"
  vpc_security_group_ids = ["sg-0066a0dd5e7c94c7f"]
  tags = {
    Name = var.instance_name
    ENV  = var.PRODUCTION
  }
}
