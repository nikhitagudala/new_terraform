output "MY_VPC_ID" {
    value = aws_vpc.Nikhi_VPC.id
  
}
output "My_Subnet" {
    value = module.MY_Module.My_Subnet
  
}