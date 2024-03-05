provider "aws" {
    region = var.region
  
}
resource "aws_vpc""Nikhi_VPC"{
   cidr_block = var.VPC_CIDR_BLOCK
   tags = {
     Name = "${var.environment}-VPC"
    }
}
module "MY_Module" {
    source = "./modules/subnet"
    vpc_id = aws_vpc.Nikhi_VPC.id
    subnet_cidr_block = var.subnet_cidr_block

  
}