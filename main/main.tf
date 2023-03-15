module "myec2" {
  source        = "../moduls/ec2"
  ami_id        = "ami-0d81306eddc614a45"
  for_each =    toset(var.instance-namex)
  # instance-map = each.value
  instance-name = each.value
  #instance_type = "t2.micro"
  #subnet_id     = module.myvpc.subnet_id

}


module "aws_s3_bucket" {
  source = "../moduls/s3"
  buckname = "github_action_1" 
}
