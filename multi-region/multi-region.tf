provider "aws" {
  region = "us-east-1"  # Set your desired AWS region
  alias = "us-east-1"
}

provider "aws" {
  region = "us-west-2"  # Set your desired AWS region
    alias = "us-west-2"
}

resource "aws_instance" "ubuntu" {
    ami = "ami-0b6c6ebed2801a5cb"
    instance_type = "t3.micro"
    key_name = "mykeypair"
    subnet_id = "subnet-08164473fa277ebed"
    provider = aws.us-east-1
}

resource "aws_instance" "ubuntu2" {
    ami = "ami-0786adace1541ca80"
    instance_type = "t3.micro"
#   key_name = "mykeypair"
    subnet_id = "subnet-0b362e46a57ea6754"
    provider = aws.us-west-2
}