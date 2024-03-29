variable "access_key" {}
variable "secret_key" {}
variable "token" {}
variable "region" {}
variable "ami" {}
variable "instance_type" {}

provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  token      = var.token
  region     = var.region
}
resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
}

output "public_dns" {
  value = aws_instance.example.public_dns
}
