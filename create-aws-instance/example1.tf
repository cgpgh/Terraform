provider "aws" {
  profile    = "default"
  region     = var.region
  shared_credentials_file = "$HOME/.aws/credentials"

}

resource "aws_instance" "example" {
  ami           = "ami-b374d5a5"
  instance_type = "t2.micro"
  tags = {
  Name = "PTL1"
  }
}
