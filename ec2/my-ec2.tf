resource "aws_instance" "my-ec2-instance" {

  ami                    = "ami-0474be6b24f418f29"
  instance_type          = "t2.micro"
  monitoring             = true
  vpc_security_group_ids = ["sg-0bb571e36be145f3b"]
  subnet_id              = "subnet-0c506575c370fed5f"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
