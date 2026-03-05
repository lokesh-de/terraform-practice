terraform {
  backend "s3" {
    bucket         = "lokesh-s3-demo-xyz" # change this
    key            = "lokesh/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}