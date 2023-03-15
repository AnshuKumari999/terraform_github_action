module "myvpc" {
  source      = "../moduls/vpc"
  vpc_cidr    = "10.0.0.0/16"
  tenancy     = "default"
  vpc_id      = module.myvpc.vpc_id
  subnet_cidr = "10.0.1.0/24"
}


module "myec2" {
  source        = "../moduls/ec2"
  ami_id        = "ami-005f9685cb30f234b"
  for_each =    toset(var.instance-namex)
  # instance-map = each.value
  instance-name = each.value
  #instance_type = "t2.micro"
  #subnet_id     = module.myvpc.subnet_id

}

module "mygw" {
    source = "../moduls/vpc"
    vpc_id = module.myvpc.vpc_id
    vpc_cidr = "10.0.0.0/16"
  
}

module "aws_s3_bucket" {
  source = "../moduls/s3"
  buckname = "githubaction123"
  
}
