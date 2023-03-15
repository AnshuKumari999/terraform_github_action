resource "aws_instance" "firstec2" {
  #  for_each      = var.instance-map //toset(var.instance_name)
   count = var.instance-name
   ami           = var.ami_id
  instance_type = "t2.micro"
  tags = {
   Name  = count.index
   Owner = "anshu.kumari@cloudeq.com"
 }
 volume_tags = {
  Name  = count.index
  Owner = "anshu.kumari@cloudeq.com"
 }

}
