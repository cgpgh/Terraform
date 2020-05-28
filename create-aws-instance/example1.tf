provider "aws" {
  profile    = "default"
  region     = "us-east-1"
  shared_credentials_file = "$HOME/.aws/credentials"
  
}

resource "aws_instance" "example" {
  ami           = "ami-b374d5a5"
  instance_type = "t2.micro"
  # Resource tags
  Name       = "${var.ec2name}"
}
