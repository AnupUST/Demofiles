terraform {
  backend "s3" {
    bucket = "mybucket"
    key = "terraform.tfstate"
    dynamodb_table = "mydbtable"
    encrypt = true
    region = "us-east-1"
    
    
    
  }
}