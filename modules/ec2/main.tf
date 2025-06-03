resource "aws_instance" "demo" {
    ami= data.aws_ami.latestimage.id
    instance_type = var.instance.type
    key_name = "key"

    
}

data "aws_ami" "latestimage" {
    most_recent = true

    owners = [ amazon ]
    filter {
       name = "name"
       values = [ "Amazon Linux AMI 2.0.20250516 x86_64 ECS HVM GP2" ]
    }   
  
}