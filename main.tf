provider "aws" {
  region = var.region
}
data "aws_availability_zones" "available" {}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "bastion"

  instance_type          = "t2.nano"
  key_name               = "sandbox-rajdeep"
  monitoring             = false
  vpc_security_group_ids = ["sg-03a329682852de7f7"]
  subnet_id              = "subnet-0b8e5dda718d26d0b"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
