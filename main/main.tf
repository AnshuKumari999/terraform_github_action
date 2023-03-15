module "myec2" {
  source        = "../moduls/ec2"
  ami_id        = "ami-005f9685cb30f234b"
  for_each =    toset(var.instance-namex)
  # instance-map = each.value
  instance-name = each.value
  #instance_type = "t2.micro"
  #subnet_id     = module.myvpc.subnet_id

}


module "aws_s3_bucket" {
  source = "../moduls/s3"
  buckname = "githubaction123"
  
}
