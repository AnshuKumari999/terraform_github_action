
  module "myvpc" {
  source      = "../moduls/vpc"
  vpc_cidr    = "10.0.0.0/16"
  tenancy     = "default"
  vpc_id      = module.myvpc.vpc_id
  subnet_cidr = "10.0.1.0/24"
}

module "mygw" {
    source = "../moduls/vpc"
    vpc_id = module.myvpc.vpc_id
    vpc_cidr = "10.0.0.0/16"
  
}
