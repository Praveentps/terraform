resource "aws_instance" "my-ec2-instance" {

  ami                    = "ami-0bcf5425cdc1d8a85"
  instance_type          = "t2.micro"
  monitoring             = true
  vpc_security_group_ids = ["sg-0bb571e36be145f3b"]
  subnet_id              = "subnet-0c506575c370fed5f"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
