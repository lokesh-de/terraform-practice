provider "aws" {
  region = "us-east-1"  # Set your desired AWS region
  alias = "region 1"
}

provider "aws" {
  region = "us-west-2"  # Set your desired AWS region
    alias = "region 2"
}

resource "aws_instance" "ubuntu" {
    ami = "ami-0b6c6ebed2801a5cb"
    instance_type = "t3.micro"
    key_name = "mykeypair"
    subnet_id = "subnet-08164473fa277ebed"
    provider = "aws.us-east-1"
}

resource "aws_instance" "ubuntu" {
    ami = "ami-0b6c6ebed2801a5cb"
    instance_type = "t3.micro"
    key_name = "mykeypair"
    subnet_id = "subnet-08164473fa277ebed"
    provider = "aws.us-west-2"
}