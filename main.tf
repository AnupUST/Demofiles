module "aws_instance" {
  source = "./modules/ec2"
}
module "volume" {
    source = "./modules/volumes"
  
}